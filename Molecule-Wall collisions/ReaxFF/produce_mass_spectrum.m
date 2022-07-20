
clear; 
%close all;
v=[];
M={};
idx=1;
KE=[10 20 30 40 50 60 70 80 90 1000];

for k=1:length(KE)
       for phi_y=0:15:345
            for phi_z=0:15:180   
                 filename= sprintf('dump_%d_%d_KE%d.prod', phi_z, phi_y,KE(k));
                 [result] = identify_species(filename);
                 v=[v;result] ;  
            end
       end 
       M{idx}=v; 
       idx=idx+1;
end




%%
figure('Renderer', 'painters', 'Position', [250 250 950 700]); 

col = [ 1.0000 , 0.5827 , 0 ; 1.0000 , 0.0079 ,0.4286 ; 0.1746 ,0.5039 ,0; ...
        0.9841,0,1.0000; 0,1.0000 ,0 ; 0.4286, 0 , 0.5714; 0.4444 , 0.0157, 0 ;...
        0.0159,0.5512,0.7937;  0,0,1.0000; 0,0,0.0476];




for i=1:length(KE)
h=histogram(M{i});
h.Normalization = 'probability';
h.BinWidth = 0.5;  
h.FaceColor = col(i,:);
h.EdgeColor = 'none';
hold on;
end
legend('10 eV','20 eV','30 eV','40 eV','50 eV','60 eV','70 eV',...
   '80 eV','90 eV','1000 eV','interpreter','latex','FontSize',18)



xlim([0 120]);
ylim([0,0.38]);
grid on;
xlabel('Mass (amu)','interpreter','latex','FontSize',18)
ylabel('Probability of occurence','interpreter','latex','FontSize',18)
title('Fragmentation of EMIBF$_4$ at 300K','interpreter','latex','FontSize',18)
set(gca,'fontsize',18)



text(0.5,0.30,'H','interpreter','latex','FontSize',14)
text(14,0.09,'CH$_3$','interpreter','latex','FontSize',14)
text(18.5,0.15,'F','interpreter','latex','FontSize',14)
text(24,0.14,'C$_2$H$_2$','interpreter','latex','FontSize',14)
text(40,0.03,'C$_2$H$_3$N','interpreter','latex','FontSize',14)
text(47,0.055,'BF$_2$','interpreter','latex','FontSize',14)
text(54,0.025,'C$_3$H$_5$N','interpreter','latex','FontSize',14)
text(67,0.08,'BF$_3$','interpreter','latex','FontSize',14)
text(85,0.155,'BF$_4$','interpreter','latex','FontSize',14)
text(107,0.09,'C$_6$H$_{11}$N$_2$','interpreter','latex','FontSize',14)
text(108,0.075,'(EMI)','interpreter','latex','FontSize',14)



%{
figure('Renderer', 'painters', 'Position', [250 250 950 700]); 
sgtitle('\underline{$T=300K$}','interpreter','latex','FontSize',20);
for i=1:6
subplot(2,3,i);
h=histogram(M{i});
h.Normalization = 'probability';
h.BinWidth = 0.50;   
h.FaceColor = 'r';
h.EdgeColor = 'none';
xlabel('Mass (amu)','interpreter','latex','FontSize',18)
ylabel('Probability of occurence','interpreter','latex','FontSize',18)
title("$KE$= "+10*i+" eV",'interpreter','latex','FontSize',14);
end
%}






