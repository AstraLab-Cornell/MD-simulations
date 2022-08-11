
clear; 
set(0,'DefaultFigureVisible','off')
%close all;
%KE=[10 20 30 40 50 60 70 80 90 1000];
ImpPar=[0,1,2,3,4,5,6];
int=[0,1,2,3,4];
for ImpPar=0:6
    for KE=10:10:70
    v=[];
    M={};
    idx=1;

    %subplot(KE/10,1,1)
    % KE=200
    % for k=0:4
    %        for phi_y=0:45:180
    %             for phi_z=0:45:315 
    %                  filename= sprintf('dump_%d_%d_KE200_IntState%d0001.prod', phi_y, phi_z, k);
    %                  [result] = identify_species(filename);
    %                  v=[v;result];  
    %             end
    %        end 
    %        M{idx}=v; 
    %        idx=idx+1;
    % end

    for k=1:length(int)
           for phi_y=0:45:45
                for phi_z=0:45:90 
                     filename= sprintf('dump_%d_%d_KE%d_Imp%d_IntState%d0001.prod', phi_y, phi_z, KE, ImpPar,int(k));
                     [result] = identify_species(filename);
                     v=[v;result];  
                end
           end 
           M{idx}=v; 
           idx=idx+1;
    end
    %%
    figure('Renderer', 'painters', 'Position', [250 70 950 700]); 
    col = [ 1.0000 , 0.5827 , 0 ; 1.0000 , 0.0079 ,0.4286 ; 0.1746 ,0.5039 ,0; ...
            0.9841,0,1.0000; 0,1.0000 ,0 ; 0.4286, 0 , 0.5714; 0.4444 , 0.0157, 0 ;...
            0.0159,0.5512,0.7937;  0,0,1.0000; 0,0,0.0476];


        for i=1:length(int)
        h=histogram(M{i});
        h.Normalization = 'probability';
        h.BinWidth = 0.5;  
        h.FaceColor = col(i,:);
        h.EdgeColor = 'none';
        hold on;
        end
        legend('0','1','2','3','4','interpreter','latex','FontSize',18)
        %legend('1 \AA','2 \AA','3 \AA','4 \AA','5 \AA','6 \AA','interpreter','latex','FontSize',18)

        %legend('10 eV','interpreter','latex','FontSize',18)

        xlim([0 120]);
        ylim([0,0.3]);
        grid on;
        xlabel('Mass (amu)','interpreter','latex','FontSize',18)
        ylabel('Probability of occurence','interpreter','latex','FontSize',18)
        title('Fragmentation of EMIBF$_4$ at 300K','interpreter','latex','FontSize',18)
        set(gca,'fontsize',18)

        tit=sprintf('EMI-BF$_4$ - BF$_4^-$ Collison: KE=%d eV, Imp Param= %d Angst', KE, ImpPar);
        title(tit,'interpreter','latex','FontSize',18)
        text(0.5,0.1,'H','interpreter','latex','FontSize',14)
        text(14,0.07,'CH$_3$','interpreter','latex','FontSize',14)
        text(18.5,0.05,'F','interpreter','latex','FontSize',14)
        text(24,0.07,'C$_2$H$_2$','interpreter','latex','FontSize',14)
        text(40,0.03,'C$_2$H$_3$N','interpreter','latex','FontSize',14)
        text(47,0.06,'BF$_2$','interpreter','latex','FontSize',14)
        text(54,0.025,'C$_3$H$_5$N','interpreter','latex','FontSize',14)
        text(67,0.08,'BF$_3$','interpreter','latex','FontSize',14)
        text(85,0.28,'BF$_4$','interpreter','latex','FontSize',14)
        text(107,0.07,'C$_6$H$_{11}$N$_2$','interpreter','latex','FontSize',14)
        text(108,0.05,'(EMI)','interpreter','latex','FontSize',14)
        
        fname='D:\EMIBF4_equilibration\Full_simulation_images\New folder';
        filename=sprintf('Collision of EMI-BF$_4$ and BF$_4^-$ at KE=%d eV and Imp Param %d Angst', KE, ImpPar);
        saveas(h,fullfile(fname,filename),'jpeg')

        

        
        
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

        hold off
    end
end




