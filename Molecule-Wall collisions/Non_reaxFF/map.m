phiz=-7.5:15:187.5;
phiy=-7.5:15:352.5;
[X,Y] = meshgrid(phiz,phiy);

%% T= 300K
load('T300K.mat');
figure('Renderer', 'painters', 'Position', [250 250 900 900]);
sgtitle('\underline{$T=300K$}','interpreter','latex','FontSize',20);

M10 = reshape(T300_KE10,24,13);
M10(end+1,:)=zeros(1,13); M10(:,end+1)=zeros(25,1);

subplot(3,3,1);
surface(X,Y,M10,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 10eV$ ; $P=$"+sum(M10(:))+"/312",'interpreter','latex','FontSize',18);

M20 = reshape(T300_KE20,24,13);
M20(end+1,:)=zeros(1,13); M20(:,end+1)=zeros(25,1);
subplot(3,3,2)
surface(X,Y,M20,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 20eV$ ; $P=$"+sum(M20(:))+"/312",'interpreter','latex','FontSize',18);

M30 = reshape(T300_KE30,24,13);
M30(end+1,:)=zeros(1,13); M30(:,end+1)=zeros(25,1);
subplot(3,3,3)
surface(X,Y,M30,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 30eV$ ; $P=$"+sum(M30(:))+"/312",'interpreter','latex','FontSize',18);

M40 = reshape(T300_KE40,24,13);
M40(end+1,:)=zeros(1,13); M40(:,end+1)=zeros(25,1);
subplot(3,3,4)
surface(X,Y,M40,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 40eV$ ; $P=$"+sum(M40(:))+"/312",'interpreter','latex','FontSize',18);

M50 = reshape(T300_KE50,24,13);
M50(end+1,:)=zeros(1,13); M50(:,end+1)=zeros(25,1);
subplot(3,3,5)
surface(X,Y,M50,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 50eV$ ; $P=$"+sum(M50(:))+"/312",'interpreter','latex','FontSize',18);

M60 = reshape(T300_KE60,24,13);
M60(end+1,:)=zeros(1,13); M60(:,end+1)=zeros(25,1);
subplot(3,3,6)
surface(X,Y,M60,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 60eV$ ; $P=$"+sum(M60(:))+"/312",'interpreter','latex','FontSize',18);


M70 = reshape(T300_KE70,24,13);
M70(end+1,:)=zeros(1,13); M70(:,end+1)=zeros(25,1);
subplot(3,3,7)
surface(X,Y,M70,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 70eV$ ; $P=$"+sum(M70(:))+"/312",'interpreter','latex','FontSize',18);

M80 = reshape(T300_KE80,24,13);
M80(end+1,:)=zeros(1,13); M80(:,end+1)=zeros(25,1);
subplot(3,3,8)
surface(X,Y,M80,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 80eV$ ; $P=$"+sum(M80(:))+"/312",'interpreter','latex','FontSize',18);

M90 = reshape(T300_KE90,24,13);
M90(end+1,:)=zeros(1,13); M90(:,end+1)=zeros(25,1);
subplot(3,3,9)
surface(X,Y,M90,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 90eV$ ; $P=$"+sum(M90(:))+"/312",'interpreter','latex','FontSize',18);

%% T= 450K
load('T450K.mat');
figure('Renderer', 'painters', 'Position', [250 250 900 900]);
sgtitle('\underline{$T=450K$}','interpreter','latex','FontSize',20);

M10 = reshape(T450_KE10,24,13);
M10(end+1,:)=zeros(1,13); M10(:,end+1)=zeros(25,1);

subplot(3,3,1);
surface(X,Y,M10,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 10eV$ ; $P=$"+sum(M10(:))+"/312",'interpreter','latex','FontSize',18);

M20 = reshape(T450_KE20,24,13);
M20(end+1,:)=zeros(1,13); M20(:,end+1)=zeros(25,1);
subplot(3,3,2)
surface(X,Y,M20,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 20eV$ ; $P=$"+sum(M20(:))+"/312",'interpreter','latex','FontSize',18);

M30 = reshape(T450_KE30,24,13);
M30(end+1,:)=zeros(1,13); M30(:,end+1)=zeros(25,1);
subplot(3,3,3)
surface(X,Y,M30,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 30eV$ ; $P=$"+sum(M30(:))+"/312",'interpreter','latex','FontSize',18);

M40 = reshape(T450_KE40,24,13);
M40(end+1,:)=zeros(1,13); M40(:,end+1)=zeros(25,1);
subplot(3,3,4)
surface(X,Y,M40,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 40eV$ ; $P=$"+sum(M40(:))+"/312",'interpreter','latex','FontSize',18);

M50 = reshape(T450_KE50,24,13);
M50(end+1,:)=zeros(1,13); M50(:,end+1)=zeros(25,1);
subplot(3,3,5)
surface(X,Y,M50,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 50eV$ ; $P=$"+sum(M50(:))+"/312",'interpreter','latex','FontSize',18);

M60 = reshape(T450_KE60,24,13);
M60(end+1,:)=zeros(1,13); M60(:,end+1)=zeros(25,1);
subplot(3,3,6)
surface(X,Y,M60,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 60eV$ ; $P=$"+sum(M60(:))+"/312",'interpreter','latex','FontSize',18);


M70 = reshape(T450_KE70,24,13);
M70(end+1,:)=zeros(1,13); M70(:,end+1)=zeros(25,1);
subplot(3,3,7)
surface(X,Y,M70,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 70eV$ ; $P=$"+sum(M70(:))+"/312",'interpreter','latex','FontSize',18);

M80 = reshape(T450_KE80,24,13);
M80(end+1,:)=zeros(1,13); M80(:,end+1)=zeros(25,1);
subplot(3,3,8)
surface(X,Y,M80,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 80eV$ ; $P=$"+sum(M80(:))+"/312",'interpreter','latex','FontSize',18);

M90 = reshape(T450_KE90,24,13);
M90(end+1,:)=zeros(1,13); M90(:,end+1)=zeros(25,1);
subplot(3,3,9)
surface(X,Y,M90,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 90eV$ ; $P=$"+sum(M90(:))+"/312",'interpreter','latex','FontSize',18);

%% T= 650K
load('T650K.mat');
figure('Renderer', 'painters', 'Position', [250 250 900 900]);
sgtitle('\underline{$T=650K$}','interpreter','latex','FontSize',20);

M10 = reshape(T650_KE10,24,13);
M10(end+1,:)=zeros(1,13); M10(:,end+1)=zeros(25,1);

subplot(3,3,1);
surface(X,Y,M10,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 10eV$ ; $P=$"+sum(M10(:))+"/312",'interpreter','latex','FontSize',18);

M20 = reshape(T650_KE20,24,13);
M20(end+1,:)=zeros(1,13); M20(:,end+1)=zeros(25,1);
subplot(3,3,2)
surface(X,Y,M20,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 20eV$ ; $P=$"+sum(M20(:))+"/312",'interpreter','latex','FontSize',18);

M30 = reshape(T650_KE30,24,13);
M30(end+1,:)=zeros(1,13); M30(:,end+1)=zeros(25,1);
subplot(3,3,3)
surface(X,Y,M30,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 30eV$ ; $P=$"+sum(M30(:))+"/312",'interpreter','latex','FontSize',18);

M40 = reshape(T650_KE40,24,13);
M40(end+1,:)=zeros(1,13); M40(:,end+1)=zeros(25,1);
subplot(3,3,4)
surface(X,Y,M40,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 40eV$ ; $P=$"+sum(M40(:))+"/312",'interpreter','latex','FontSize',18);

M50 = reshape(T650_KE50,24,13);
M50(end+1,:)=zeros(1,13); M50(:,end+1)=zeros(25,1);
subplot(3,3,5)
surface(X,Y,M50,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 50eV$ ; $P=$"+sum(M50(:))+"/312",'interpreter','latex','FontSize',18);

M60 = reshape(T650_KE60,24,13);
M60(end+1,:)=zeros(1,13); M60(:,end+1)=zeros(25,1);
subplot(3,3,6)
surface(X,Y,M60,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 60eV$ ; $P=$"+sum(M60(:))+"/312",'interpreter','latex','FontSize',18);


M70 = reshape(T650_KE70,24,13);
M70(end+1,:)=zeros(1,13); M70(:,end+1)=zeros(25,1);
subplot(3,3,7)
surface(X,Y,M70,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 70eV$ ; $P=$"+sum(M70(:))+"/312",'interpreter','latex','FontSize',18);

M80 = reshape(T650_KE80,24,13);
M80(end+1,:)=zeros(1,13); M80(:,end+1)=zeros(25,1);
subplot(3,3,8)
surface(X,Y,M80,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 80eV$ ; $P=$"+sum(M80(:))+"/312",'interpreter','latex','FontSize',18);

M90 = reshape(T650_KE90,24,13);
M90(end+1,:)=zeros(1,13); M90(:,end+1)=zeros(25,1);
subplot(3,3,9)
surface(X,Y,M90,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 90eV$ ; $P=$"+sum(M90(:))+"/312",'interpreter','latex','FontSize',18);

%% T= 850K
load('T850K.mat');
figure('Renderer', 'painters', 'Position', [250 250 900 900]);
sgtitle('\underline{$T=850K$}','interpreter','latex','FontSize',20);

M10 = reshape(T850_KE10,24,13);
M10(end+1,:)=zeros(1,13); M10(:,end+1)=zeros(25,1);

subplot(3,3,1);
surface(X,Y,M10,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 10eV$ ; $P=$"+sum(M10(:))+"/312",'interpreter','latex','FontSize',18);

M20 = reshape(T850_KE20,24,13);
M20(end+1,:)=zeros(1,13); M20(:,end+1)=zeros(25,1);
subplot(3,3,2)
surface(X,Y,M20,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 20eV$ ; $P=$"+sum(M20(:))+"/312",'interpreter','latex','FontSize',18);

M30 = reshape(T850_KE30,24,13);
M30(end+1,:)=zeros(1,13); M30(:,end+1)=zeros(25,1);
subplot(3,3,3)
surface(X,Y,M30,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 30eV$ ; $P=$"+sum(M30(:))+"/312",'interpreter','latex','FontSize',18);

M40 = reshape(T850_KE40,24,13);
M40(end+1,:)=zeros(1,13); M40(:,end+1)=zeros(25,1);
subplot(3,3,4)
surface(X,Y,M40,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 40eV$ ; $P=$"+sum(M40(:))+"/312",'interpreter','latex','FontSize',18);

M50 = reshape(T850_KE50,24,13);
M50(end+1,:)=zeros(1,13); M50(:,end+1)=zeros(25,1);
subplot(3,3,5)
surface(X,Y,M50,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 50eV$ ; $P=$"+sum(M50(:))+"/312",'interpreter','latex','FontSize',18);

M60 = reshape(T850_KE60,24,13);
M60(end+1,:)=zeros(1,13); M60(:,end+1)=zeros(25,1);
subplot(3,3,6)
surface(X,Y,M60,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 60eV$ ; $P=$"+sum(M60(:))+"/312",'interpreter','latex','FontSize',18);


M70 = reshape(T850_KE70,24,13);
M70(end+1,:)=zeros(1,13); M70(:,end+1)=zeros(25,1);
subplot(3,3,7)
surface(X,Y,M70,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 70eV$ ; $P=$"+sum(M70(:))+"/312",'interpreter','latex','FontSize',18);

M80 = reshape(T850_KE80,24,13);
M80(end+1,:)=zeros(1,13); M80(:,end+1)=zeros(25,1);
subplot(3,3,8)
surface(X,Y,M80,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 80eV$ ; $P=$"+sum(M80(:))+"/312",'interpreter','latex','FontSize',18);

M90 = reshape(T850_KE90,24,13);
M90(end+1,:)=zeros(1,13); M90(:,end+1)=zeros(25,1);
subplot(3,3,9)
surface(X,Y,M90,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 90eV$ ; $P=$"+sum(M90(:))+"/312",'interpreter','latex','FontSize',18);

%% T= 1000K
load('T1000K.mat');
figure('Renderer', 'painters', 'Position', [250 250 900 900]);
sgtitle('\underline{$T=1000K$}','interpreter','latex','FontSize',20);

M10 = reshape(T1000_KE10,24,13);
M10(end+1,:)=zeros(1,13); M10(:,end+1)=zeros(25,1);

subplot(3,3,1);
surface(X,Y,M10,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 10eV$ ; $P=$"+sum(M10(:))+"/312",'interpreter','latex','FontSize',18);

M20 = reshape(T1000_KE20,24,13);
M20(end+1,:)=zeros(1,13); M20(:,end+1)=zeros(25,1);
subplot(3,3,2)
surface(X,Y,M20,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 20eV$ ; $P=$"+sum(M20(:))+"/312",'interpreter','latex','FontSize',18);

M30 = reshape(T1000_KE30,24,13);
M30(end+1,:)=zeros(1,13); M30(:,end+1)=zeros(25,1);
subplot(3,3,3)
surface(X,Y,M30,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 30eV$ ; $P=$"+sum(M30(:))+"/312",'interpreter','latex','FontSize',18);

M40 = reshape(T1000_KE40,24,13);
M40(end+1,:)=zeros(1,13); M40(:,end+1)=zeros(25,1);
subplot(3,3,4)
surface(X,Y,M40,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 40eV$ ; $P=$"+sum(M40(:))+"/312",'interpreter','latex','FontSize',18);

M50 = reshape(T1000_KE50,24,13);
M50(end+1,:)=zeros(1,13); M50(:,end+1)=zeros(25,1);
subplot(3,3,5)
surface(X,Y,M50,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 50eV$ ; $P=$"+sum(M50(:))+"/312",'interpreter','latex','FontSize',18);

M60 = reshape(T1000_KE60,24,13);
M60(end+1,:)=zeros(1,13); M60(:,end+1)=zeros(25,1);
subplot(3,3,6)
surface(X,Y,M60,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 60eV$ ; $P=$"+sum(M60(:))+"/312",'interpreter','latex','FontSize',18);


M70 = reshape(T1000_KE70,24,13);
M70(end+1,:)=zeros(1,13); M70(:,end+1)=zeros(25,1);
subplot(3,3,7)
surface(X,Y,M70,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 70eV$ ; $P=$"+sum(M70(:))+"/312",'interpreter','latex','FontSize',18);

M80 = reshape(T1000_KE80,24,13);
M80(end+1,:)=zeros(1,13); M80(:,end+1)=zeros(25,1);
subplot(3,3,8)
surface(X,Y,M80,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 80eV$ ; $P=$"+sum(M80(:))+"/312",'interpreter','latex','FontSize',18);

M90 = reshape(T1000_KE90,24,13);
M90(end+1,:)=zeros(1,13); M90(:,end+1)=zeros(25,1);
subplot(3,3,9)
surface(X,Y,M90,'EdgeColor','k');
mycolors = [1 1 1; 1 0 0];
colormap(mycolors);
xlim([-7.5,187.5]);
xticks(0:30:180);
ylim([-7.7,352.5]); 
yticks(0:30:345);
xlabel('$\phi_z$','interpreter','latex','FontSize',22);
ylabel('$\phi_y$','interpreter','latex','FontSize',22);
title("$KE= 90eV$ ; $P=$"+sum(M90(:))+"/312",'interpreter','latex','FontSize',18);

