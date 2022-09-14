%%
clear; clc; 
% 1- Reorder the data
filename='eq_SYST.dat';
txt = regexp(fileread(filename),'\n','split');
expression1 = 'Atoms # full';
pos_line = find(contains(txt,expression1));

atoms=zeros(1048,10);


for i=1:1048
  atoms(i,:)=  str2num(txt{pos_line+1+i});
end
atoms=sortrows(atoms,1);
atoms =atoms (1:24,:);


%% 3- Rotate the molecule

myVideo = VideoWriter('rotation.avi','MPEG-4'); %open video file
myVideo.FrameRate = 10;  %can adjust this, 5 - 10 works well for me
open(myVideo)
 
 


        
   cc= {[0.4940 0.1840 0.5560];[0 0 1];[0 0 1];[0 0 1];...
       [0.8500 0.3250 0.0980];[0.8500 0.3250 0.0980];[0.8500 0.3250 0.0980];[0.8500 0.3250 0.0980];...
         [1 0 0];[0 1 0]}; % colors
     for i=1:24
         col(i,:)= [cc{atoms(i,3)}];
     end
  for jj=0:15:345
    phi_y=jj;
    for ii=0:15:180
     phi_z=ii;
     [pos_f] = rotate_z_y(atoms,phi_z,phi_y);
     
    scatter3(pos_f(:,5),pos_f(:,6),pos_f(:,7),70,col,'filled');
     view(45,20)
     xlim([-5,5]);
    ylim([-5,5]);
    zlim([-5,5]);
    title(['$\phi_y=$',num2str(phi_y),'$^{\circ}$ ; $\phi_z=$',num2str(phi_z),'$^{\circ}$'],...,
        'interpreter','latex','FontSize',18)
    xlabel('x','interpreter','latex','FontSize',18)
    ylabel('y','interpreter','latex','FontSize',18)
    zlabel('z','interpreter','latex','FontSize',18)
    drawnow;
    
    frame = getframe(gcf); %get frame
    writeVideo(myVideo, frame);
  
    %pause(0.05)
    end 
end
close(myVideo)

%%


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
