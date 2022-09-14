function datafiles_generator(filename,KE)

% This function takes as inputs:
% filename: Name of the file containting the equilibrated system (disordered)
% KE: Kinetic energy of the molecule in eV
% and generates ordered, rotated files with a an updated velocity.

n=24 ; %number of atoms
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

for i=1:n
    txt{pos_line+1+i} = regexprep(num2str(atoms(i,:),15), ' +', ' '); 
    txt{vel_line+1+i} = regexprep(num2str(velocities(i,:),15), ' +', ' ');  
end



% 2- Vary Kinetic Energy

vcm = KE_to_v(KE)*1e-5; % convert m/s to Ang/ fs for REAL units
v_th=velocities;
v_th(:,2)=v_th(:,2)+vcm; %Vx

for kk=1:n
        txt{vel_line+1+kk} = regexprep(num2str(v_th(kk,:),10), ' +', ' ');  
end


% 3- Rotate the molecule
  pos_i=atoms(1:n,:);


for jj=0:15:345
    phi_y=jj;
    for ii=0:15:180
     phi_z=ii;
     [pos_f] = rotate_z_y(pos_i,phi_z,phi_y);
      
         for kk=1:n
             txt{pos_line+1+kk} = regexprep(num2str(pos_f(kk,:),10), ' +', ' ');  
         end
    
     fname = sprintf('eq_SYST_%d_%d_KE%d.dat', phi_z, phi_y,KE);
     fid = fopen(fname ,'wt') ;
     fprintf(fid,'%s\n',txt{:});
     fclose(fid) ;
    end
end





% Define rotate_z_y

function [pos_f] = rotate_z_y(pos_i,phi_z,phi_y)

%Input:
%pos_i: Initial position of the molecule: 
      % Id | mol Id | atom type| charge | x | y | z.  
%phi_z: rotation angle about z axis in degrees.
%phi_y: rotation angle about y axis in degrees.
%------
%Output:
%pos_f: final position of the molecule

x=pos_i(:,5);y=pos_i(:,6);z=pos_i(:,7);
xc=mean(x);
yc=mean(y);
zc=mean(z);

X= cosd(phi_y)*cosd(phi_z)*(x-xc) -  sind(phi_z)*(y-yc) - cosd(phi_z)*sind(phi_y)*(z-zc);
Y= cosd(phi_y)*sind(phi_z)*(x-xc) + cosd(phi_z)*(y-yc) -  sind(phi_y)*sind(phi_z)*(z-zc);
Z= sind(phi_y)*(x-xc)      +    cosd(phi_y)*(z-zc);

pos_f=pos_i; pos_f(:,5)=X;pos_f(:,6)=Y;pos_f(:,7)=Z;
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

