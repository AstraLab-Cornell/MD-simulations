function datafiles_generator(filename)
for KE=100:100:700
    % This function takes as inputs:
    % filename: Name of the file containting the equilibrated system (disordered)
    % KE: Kinetic energy of the molecule in eV
    % and generates ordered, rotated files of the molecule with a an updated velocity of the monomer.

    m=24;%EMI-BF4
    n=29; %number of atoms
    % 1- Reorder the data

    txt = regexp(fileread(filename),'\n','split');
    expression1 = 'Atoms # full';
    expression2 ='Velocities';
    pos_line = find(contains(txt,expression1));
    vel_line = find(contains(txt,expression2));

    atoms=zeros(n,10);
    velocities=zeros(n,4);


    for i=1:n
      atoms(i,:)=  str2num(txt{pos_line+1+i});
      velocities(i,:)=  str2num(txt{vel_line+1+i});
    end

    atoms=sortrows(atoms,1);
    velocities=sortrows(velocities,1);

    writematrix(atoms,'sorted.txt','delimiter',' ')
    writematrix(velocities,'sorted2.txt','delimiter',' ')


    for i=1:n
        txt{pos_line+1+i} = regexprep(num2str(atoms(i,:),15), ' +', ' '); 
        txt{vel_line+1+i} = regexprep(num2str(velocities(i,:),15), ' +', ' ');  
    end



    % 2- Vary Kinetic Energy
    m_BF4=86.8;
    vcm = KE_to_v(KE,m_BF4)*1e-5; % convert m/s to Ang/ fs for REAL units
    v_th=velocities;
    for i=m+1:n
        v_th(i,2)=v_th(i,2)-vcm; %Vx
    end

    for kk=m+1:n+1
              txt{vel_line+kk} = regexprep(num2str(v_th(kk-1,:),10), ' +', ' ');  
    end



    % 3- Rotate the molecule

    %individually
    %   pos_i=atoms(1:m,:);
    %   [pos_f] = rotate_z_y(pos_i,phiz,phiy);
    %   pos_i=atoms(m+1:n,:);
    %   [pos_f] = rotate_z_y(pos_i,thetaz,thetay);
    %   
    % 
    % for kk=m+1:n
    %           txt{vel_line+kk} = regexprep(num2str(v_th(kk,:),10), ' +', ' ');  
    % end  
    %   
    %   fname = sprintf('eq_SYST_%d_%d_%d_%d_KE%d.dat', phiy, phiz, thetay, thetaz,KE);
    %   fid = fopen(fname ,'wt') ;
    %   fprintf(fid,'%s\n',txt{:});
    %   fclose(fid) ;
    %   

    %all possible rotations of monomer

    pos_i=atoms(1:n,:);
     
    %array of masses in order
    N=14.007;
    C=12.001;
    H=1.008;
    B=10.811;
    F=18.9984;
    mass(1)=0;
    for i=1:m
       ms=pos_i(i,3);
       if ms==1
        ms=N;
       elseif ms==2
        ms=C;
       elseif ms==3
        ms=H;
       elseif ms==4
        ms=B;
       elseif ms==5
        ms=F;
       mass(i)=ms;
       end
    end     
   
% 
% if KE== 10  
%     fid1 = fopen( 'phiyvalues.txt', 'wt' );
%     X1=fread(fid1);
%     fid2 = fopen( 'phizvalues.txt', 'wt' );
%     X2=fread(fid2);
% end
% for i=1:10
%     if KE==10
%         phi_y=round(345*rand(1));
%         phi_z=round(180*rand(1));
%         X1(i)=phi_y;
%         X2(i)=phi_z;
%     end
%     [pos_f] = rotate_z_y(pos_i,phi_z,phi_y,mass,m);
%     pos_i=pos_f;
% 
%     for Imp_Par=0:6
%         [pos_f] = shift(pos_i,Imp_Par,m,n);
%          for kk=1:n
%              txt{pos_line+1+kk} = regexprep(num2str(pos_f(kk,:),10), ' +', ' ');  
%          end
%          fname = sprintf('eq_SYST_%d_%d_KE%d_Imp%d.dat', phi_z, phi_y,KE,Imp_Par);
%          fid = fopen(fullfile("D:\EMIBF4_equilibration\data_files_ImpPar",fname) ,'wt') ;
%          fprintf(fid,'%s\n',txt{:});
%          fclose(fid) ;
%     end
% end
% 
% for j=1:10
%     fprintf(fid1,'%s', X1(j))
%     fprintf(fid2,'%s\n', X2(j));
% end
% fclose(fid1)
% fclose(fid2)



    for jj=0:45:345
        phi_y=jj;
        for ii=0:45:180
            phi_z=ii;
            [pos_f] = rotate_z_y(pos_i,phi_z,phi_y,mass,m);
            pos_i=pos_f;
            for Imp_Par=0:6
                [pos_f] = shift(pos_i,Imp_Par,m,n);
                 for kk=1:n
                     txt{pos_line+1+kk} = regexprep(num2str(pos_f(kk,:),10), ' +', ' ');  
                 end

                 fname = sprintf('eq_SYST_%d_%d_KE%d_Imp%d.dat', phi_z, phi_y,KE,Imp_Par);
                 fid = fopen(fullfile("D:\EMIBF4_equilibration\data_files",fname) ,'wt') ;
                 fprintf(fid,'%s\n',txt{:});
                 fclose(fid) ;
            end
        end
    end


    
end
function [pos_f] = shift(pos_i,Imp_Par,m,n)

    for i=m+1:n
        pos_i(i,7)=pos_i(i,7)+Imp_Par;
    end
    pos_f=pos_i;
    
end

function [pos_f] = rotate_z_y(pos_i,phi_z,phi_y,mass,m)

%Input:
%pos_i: Initial position of the molecule: 
      % Id | mol Id | atom type| charge | x | y | z.  
%phi_z: rotation angle about z axis in degrees.
%phi_y: rotation angle about y axis in degrees.
%------
%Output:
%pos_f: final position of the molecule

x=pos_i(1:m,5);y=pos_i(1:m,6);z=pos_i(1:m,7);

[xc, yc, zc] = COM(mass,x,y,z);

X= cosd(phi_y)*cosd(phi_z)*(x-xc) -  sind(phi_z)*(y-yc) - cosd(phi_z)*sind(phi_y)*(z-zc);
Y= cosd(phi_y)*sind(phi_z)*(x-xc) + cosd(phi_z)*(y-yc) -  sind(phi_y)*sind(phi_z)*(z-zc);
Z= sind(phi_y)*(x-xc)      +    cosd(phi_y)*(z-zc);

pos_f=pos_i; pos_f(1:m,5)=X+xc;pos_f(1:m,6)=Y+yc;pos_f(1:m,7)=Z+zc;
end


function [xc, yc, zc] = COM(mass,x,y,z)
    xc=0;
    for i=1:length(mass)
        xc=xc+mass(i)*x(i);
    end
    xc=xc/sum(mass);
        
    yc=0;
    for i=1:length(mass)
        yc=yc+mass(i)*y(i);
    end
    yc=yc/sum(mass);
        
    zc=0;
    for i=1:length(mass)
        zc=zc+mass(i)*z(i);
    end
    zc=zc/sum(mass);
    
end


% Define KE_to_v

function [v] = KE_to_v(KE,m)
%inputs:
% KE : Kinetic energy in electron volt (ev)
% m  : mass in Dalton (gram/mol)
% m = 197.913  g/mol for EMI-BF4

if nargin ==1
    m =   197.913;
end

KE_J =KE * 1.6022e-19; %KE in Joules
M=m* 1.66054e-27; % g/mol to kg
%output:
% v  : velocity in m/s

v=sqrt(2*KE_J/M);

end


end