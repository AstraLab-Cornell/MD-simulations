clear; close all;


KE=[0 10 20 30 40 50 60 70 80 90];
P300=[0 40 123 179 212 241 267 268 270 284]/312;
P450=[0 37 85 135 179 231 242 266 271 274]/312;
P650=[0 56 114 135 147 178 193 209 221 252]/312;
P850=[0 56 101 133 154 178 173 196 209 211]/312;
P1000=[0 39 70 128 192 203 230 242 261 251]/312;
avgP= (P1000+P850+P650+P450+P300)/5;


figure();hold on; grid on;
col={[1,0,0],[0,0,1],[0,0.5,0.5],[1,0.6431,0.2],[1,0,1]};
plot(KE,P1000,'o','MarkerFaceColor',col{1},'MarkerEdgeColor',col{1},'MarkerSize',6); 
plot(KE,P850,'d','MarkerFaceColor',col{2},'MarkerEdgeColor',col{2},'MarkerSize',6); 
plot(KE,P650,'s','MarkerFaceColor',col{3},'MarkerEdgeColor',col{3},'MarkerSize',6); 
plot(KE,P450,'*','MarkerFaceColor',col{4},'MarkerEdgeColor',col{4},'MarkerSize',6); 
plot(KE,P300,'s','MarkerFaceColor',col{5},'MarkerEdgeColor',col{5},'MarkerSize',6);

transparency=0.25;
col={[1,0,0,transparency],[0,0,1,transparency],[0,0.5,0.5,transparency],...
    [1,0.6431,0.2,transparency],[1,0,1,transparency]};

load census
s = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,0],...
               'Startpoint',[0.8 0.05 2]);
f = fittype('alpha/(1+exp(-k*(x-xo)))','independent','x','coefficients',{'alpha','k','xo'},'options',s);


% 1000K
[c_1000,~] = fit(KE.',P1000.',f);
plot(0:90,c_1000(0:90),'--','linewidth',2,'color',col{1}); 

%850K
[c_850,~] = fit(KE.',P850.',f);
plot(0:90,c_850(0:90),'--','linewidth',2,'color',col{2}); 

%650K
[c_650,~] = fit(KE.',P650.',f);
plot(0:90,c_650(0:90),'--','linewidth',2,'color',col{3}); hold on

%450K
[c_450,~] = fit(KE.',P450.',f);
plot(0:90,c_450(0:90),'--','linewidth',2,'color',col{4}); 

%300K
[c_300,~] = fit(KE.',P300.',f);
plot(0:90,c_300(0:90),'--','linewidth',2,'color',col{5}); 

%Average
[c_avg,~] = fit(KE.',avgP.',f);
plot(0:90,c_avg(0:90),'linewidth',2,'color','k'); 


xlabel('Impact energy (eV)','interpreter','latex','FontSize',18);
ylabel('Probability of ionic dissociation','interpreter','latex','FontSize',18);


legend('$T=1000K$','$T=850K$','$T=650K$','$T=450K$','$T=300K$','','','','','',...
    'Average','interpreter','latex','FontSize',18,'Location','southeast')


xlim([0 90]);
ylim([0 1])

%residuals=100*(abs(c(10:10:90)-avgP(2:end).')./avgP(2:end).')





