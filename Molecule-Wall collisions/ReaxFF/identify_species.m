function [result] = identify_species(filename)

% Read the dump file
txt = regexp(fileread(filename),'\n','split');
expression = 'ITEM: TIMESTEP';
time_lines = find(contains(txt,expression));
time_line=time_lines(end);
n=24; % number of atoms 
position=zeros(n,5);

for i=1:n
  position(i,:)=  str2num(txt{time_line+8+i});
end



position = sortrows(position,1);  

mass=ones(1,n)*nan;

for i=1:n
    switch position(i,2)
        case 1
          mass(i)= 14.0070; % Nitrogen 
          %name(i)= 'N';
        case 2
          mass(i)= 12.0010; % Carbon
          %name(i)= 'C';
        case 3
          mass(i)= 1.0080; % Hydrogen
          %name(i)= 'H';
        case 4
          mass(i)= 10.811; % Boron
          %name(i)= 'B';
        case 5
          mass(i)= 18.9984; % Fluorine
          %name(i)= 'F';
     end
  
end


cutoff=2;  % Cutoff distance
d_matrix=zeros(n,n)*nan;


for i=1:n
    for j=1:n
        d= sqrt((position(i,3)-position(j,3))^2 +(position(i,4)-position(j,4))^2 + ...
             (position(i,5)-position(j,5))^2);
        d_matrix(i,j) = d<cutoff;
    end
end
   
species=d_matrix;

for kk=1:n
for i=1:n
    for j=1:n        
        if d_matrix(i,j) ~=0
            species(i,:)=species(i,:)+species(j,:);           
        end  
    end
end
end


for i=1:n
    for j=1:n        
        if species(i,j) ~=0
            species(i,j)=1;       
        end  
    end
end

species = unique(species,'rows');

result=zeros(size(species,1),1)*nan;



for i=1:size(species,1)
  result(i) =sum(mass(species(i,:)==1));
end





end

