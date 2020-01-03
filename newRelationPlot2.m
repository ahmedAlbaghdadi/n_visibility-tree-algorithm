clc ; 
clear ; 
close all ;

n= [4 6 8 10];
R= [10 12 14 16];
L1=[124.2 124.18 124.15 124.13];
L2=[124.2 125.5 126.5 128.3];
T1=[50.5 74 111.9 158];
T2 = [50.5 50.5 50.5 50.5];

% plot (n , L1);
% hold on
% plot (n , T1);

figure

yyaxis left
plot (R , L2 , 'Color','b','LineWidth',3);
set(gca,'FontSize',30)
yyaxis right
plot (R , T2, 'Color','r','LineWidth',3);
set(gca,'FontSize',30)

legend({'Length of path (meter)','Computation time (sec)'},'FontSize',30,'TextColor','black')
xlabel('r+R')
set(gca,'FontSize',30)
yyaxis left
ylabel('Length of path (meter)','FontSize',30,'Color','b')
yyaxis right
ylabel('Computation time (sec)','FontSize',30,'Color','r')



grid on

