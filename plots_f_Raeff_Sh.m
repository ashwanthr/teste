% load invLambda_Sh_Raeff_data_concised_updated.mat
% 

                                      %% delta plots %%                                    
figure
% subplot(1,2,1)
errorbar(X_calc_Small,delta{2,3}, delta{2,4}, 'ro','MarkerFaceColor','r', 'LineWidth', 2.0)
hold on; 
errorbar(X_calc_Medium,delta{3,3}, delta{3,4}, 'ks','MarkerFaceColor','k', 'LineWidth', 2.0)
errorbar(X_calc_Large,delta{4,3}, delta{4,4}, 'b^','MarkerFaceColor','b', 'LineWidth', 2.0)


temp_x = [0 12];
plot(temp_x, [0.63 0.63], 'k--');
clear temp_x;
set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$l$ (mm)','fontsize',28,'interpreter','latex');

ylabel('$\delta$ (mm)','fontsize',28,'interpreter','latex');

ss=legend('D = 2.5mm','D = 3.5mm','D = 4.5mm');
set(ss,'fontsize',24);

 set(gca, 'XMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'YMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
%  set(gca, 'XTick', [0 5 10 15] );
%  set(gca, 'YTick', [0.2 0.4 0.6 0.8 1] );


h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);
  
xlim([0 12]);
ylim([0 1]);

                                        %% # of plumes plots %%
%% # of plumes v/s l/del
figure
subplot(1,2,1)
errorbar(X_calc_Small./0.63,n_plumes{2,3}, n_plumes{2,4}, 'ro', 'LineWidth', 2.0, 'Markersize', 12)
hold on; 
errorbar(X_calc_Medium./0.63,n_plumes{3,3}, n_plumes{3,4}, 'ks', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(X_calc_Large./0.63,n_plumes{4,3}, n_plumes{4,4}, 'b^', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(X1_calc_Small./0.63,n_plumes{5,3}, n_plumes{5,4}, 'ro','MarkerFaceColor','r', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(X1_calc_Medium./0.63,n_plumes{6,3}, n_plumes{6,4}, 'ks','MarkerFaceColor','k', 'LineWidth', 2.0, 'Markersize', 12)

set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$l/\delta$','fontsize',28,'interpreter','latex');

ylabel('$n_f$','fontsize',28,'interpreter','latex');

% ss=legend('2.5mm Discs','3.5mm Discs','4.5mm Discs');
% set(ss,'fontsize',24);

 set(gca, 'XMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'YMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
%  set(gca, 'XTick', [0 5 10 15] );
%  set(gca, 'YTick', [0.2 0.4 0.6 0.8 1] );


h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);
dim = [.15 .9 0 0];
annotation('textbox',dim,'String','(a)', 'fontsize',28,'interpreter','latex');
%% plot nPlumesFit v/s l/del
hold on
x_temp = 0.4:0.1:20;
f_temp = nPlumesFit(x_temp,2.5,50, 247*0.86, 22710, 0.63);
plot(x_temp,f_temp,'r--', 'LineWidth', 2.0 );
x_temp = 0.6:0.1:20;
f_temp = nPlumesFit(x_temp,3.5,50, 247*0.86, 22710, 0.63);
plot(x_temp,f_temp,'k--', 'LineWidth', 2.0 );
x_temp = 0.7:0.1:20;
f_temp = nPlumesFit(x_temp,4.5,50, 247*0.86, 22710, 0.63);
plot(x_temp,f_temp,'b--', 'LineWidth', 2.0 );

ss=legend('D = 2.5mm','D = 3.5mm','D = 4.5mm');
set(ss,'fontsize',24);
% f1 = fFit(x,2.5,20, 91*0.90, 9814, 0.63);
% plot(x,f1,'r.-');
% x = 0.6:0.1:17;
% f1 = fFit(x,3.5,20, 91*0.90, 9814, 0.63);
% plot(x,f1,'k.-');

%% # of plumes v/s Omega X Ra
subplot(1,2,2)
errorbar(Om{2,3}(:,1).*22710,n_plumes{2,3}([1:5, 7]), n_plumes{2,4}([1:5, 7]), 'ro', 'LineWidth', 2.0, 'Markersize', 12)
hold on; 
errorbar(Om{3,3}(:,1).*22710,n_plumes{3,3}, n_plumes{3,4}, 'ks', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Om{4,3}(:,1).*22710,n_plumes{4,3}, n_plumes{4,4}, 'b^', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Om{5,3}(:,1).*9814,n_plumes{5,3}, n_plumes{5,4}, 'ro','MarkerFaceColor','r', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Om{6,3}(:,1).*9814,n_plumes{6,3}, n_plumes{6,4}, 'ks','MarkerFaceColor','k', 'LineWidth', 2.0, 'Markersize', 12)

set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$\Omega \cdot Ra$','fontsize',28,'interpreter','latex');

% ylabel('$f(\delta/\lambda)$','fontsize',28,'interpreter','latex');

%  set(gca, 'XMinorTick', 'on');
 set(gca, 'Ticklength', [0.02;0.01] );
%  set(gca, 'YMinorTick', 'on');
 set(gca, 'Ticklength', [0.02;0.01] );
%  set(gca, 'XTick', [0 5 10 15] );
%  set(gca, 'YTick', [0.2 0.4 0.6 0.8 1] );


h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);

dim = [0.6 .9 0 0];
annotation('textbox',dim,'String','(b)', 'fontsize',28,'interpreter','latex');
%% plot nPlumesFit v/s OmxRa
hold on
x_temp = 0:100:14000;
f_temp = (8.73.*exp(-1.04e-4.*x_temp));
plot(x_temp,f_temp,'r--', 'LineWidth', 2.0 );

                                        %% Raeff plots %%
%% Raeff v/s l/del
figure
errorbar(X_calc_Small([1:5 7])./0.63,Raeff{2,3}([1:5 7])./22710, Raeff{2,4}([1:5 7])./22710, 'ro', 'LineWidth', 2.0, 'Markersize', 12)
hold on; 
errorbar(X_calc_Medium./0.63,Raeff{3,3}./22710, Raeff{3,4}./22710, 'ks', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(X_calc_Large./0.63,Raeff{4,3}./22710, Raeff{4,4}./22710, 'b^', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(X1_calc_Small./0.63,Raeff{5,3}./9814, Raeff{5,4}./9814, 'ro','MarkerFaceColor','r', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(X1_calc_Medium./0.63,Raeff{6,3}./9814, Raeff{6,4}./9814, 'ks','MarkerFaceColor','k', 'LineWidth', 2.0, 'Markersize', 12)

set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$l/\delta$','fontsize',28,'interpreter','latex');

ylabel('$Ra_{eff}$','fontsize',28,'interpreter','latex');

 set(gca, 'XMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'YMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'XTick', [0 5 10 15] );
%  set(gca, 'YTick', [0.2 0.4 0.6 0.8 1] );


h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);

%% Raeff plot fit
xx_temp = 0.1:0.1:17;
hold on

x_temp = 0.3:0.1:17;
[Raeff_1, Raeff_2] = RaeffFit(x_temp,2.5,50, 247*0.86, 22710, 0.63);
x0 = x_temp;
y0 = Raeff_1;
init = [1,1,1];
coeff_func = fminsearch(@(coeff)Raeff_func(coeff,x0,y0),init);
f_temp = fFit(xx_temp,2.5,50, 247*0.86, 22710, 0.63);

plot(xx_temp, coeff_func(1) + coeff_func(2).*xx_temp + coeff_func(3)./xx_temp, 'r--', 'LineWidth', 2.0 ) 

coeff_all(:,1)=coeff_func;

x_temp = 0.6:0.1:17;
[Raeff_1, Raeff_2] = RaeffFit(x_temp,3.5,50, 247*0.86, 22710, 0.63);
x0 = x_temp;
y0 = Raeff_1;
init = [1,1,1];
coeff_func = fminsearch(@(coeff)Raeff_func(coeff,x0,y0),init);
f_temp = fFit(xx_temp,3.5,50, 247*0.86, 22710, 0.63);
hold on
plot(xx_temp, coeff_func(1) + coeff_func(2).*xx_temp + coeff_func(3)./xx_temp, 'k--', 'LineWidth', 2.0 )

coeff_all(:,2)=coeff_func;

x_temp = 0.7:0.1:17;
[Raeff_1, Raeff_2] = RaeffFit(x_temp,4.5,50, 247*0.86, 22710, 0.63);
x0 = x_temp;
y0 = Raeff_1;
init = [1,1,1];
coeff_func = fminsearch(@(coeff)Raeff_func(coeff,x0,y0),init);
f_temp = fFit(xx_temp,4.5,50, 247*0.86, 22710, 0.63);
hold on
plot(xx_temp, coeff_func(1) + coeff_func(2).*xx_temp + coeff_func(3)./xx_temp, 'b--', 'LineWidth', 2.0 )

coeff_all(:,3)=coeff_func;

ylim([0.1 1.1])
xlim([0 17])

h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);

ss=legend('D = 2.5mm','D = 3.5mm','D = 4.5mm');
set(ss,'fontsize',24);
                                        %% Sh plots %%
%% Sh v/s l/del
% load invLambda_Sh_Raeff_data_concised.mat
figure
subplot(1,2,2)
hold on; 
errorbar(Sh{2,2}(:,1)./del,(Sh{2,3}(:,1)./(247*0.86)), Sh{2,3}(:,2)./(247*0.86), 'ro', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Sh{3,2}(:,1)./del,(Sh{3,3}(:,1)./(247*0.86)), Sh{3,3}(:,2)./(247*0.86), 'ks', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Sh{4,2}(:,1)./del,(Sh{4,3}(:,1)./(247*0.86)), Sh{4,3}(:,2)./(247*0.86), 'b^', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Sh{5,2}(:,1)./del,(Sh{5,3}(:,1)./(91*0.90)), Sh{5,3}(:,2)./(91*0.90), 'ro','MarkerFaceColor','r', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Sh{6,2}(:,1)./del,(Sh{6,3}(:,1)./(91*0.90)), Sh{6,3}(:,2)./(91*0.90), 'ks','MarkerFaceColor','k', 'LineWidth', 2.0, 'Markersize', 12)

% for muiltiple slopes on interface profile
% errorbar(Sh{2,2}(:,2)./del,Sh{2,3}(:,3)./247, Sh{2,3}(:,4)./247, 'b*')
% errorbar(Sh{3,2}(:,2)./del,Sh{3,3}(:,3)./247, Sh{3,3}(:,4)./247, 'b*')
% errorbar(Sh{4,2}(:,2)./del,Sh{4,3}(:,3)./247, Sh{4,3}(:,4)./247, 'b*')
% errorbar(Sh{5,2}(:,2)./del,Sh{5,3}(:,3)./91, Sh{5,3}(:,4)./91, 'bd','MarkerFaceColor','r')
% errorbar(Sh{6,2}(:,2)./del,Sh{6,3}(:,3)./91, Sh{6,3}(:,4)./91, 'bd','MarkerFaceColor','b')
temp_x = [1 1]; temp_y = [0 1];
plot(temp_x, temp_y, 'k-.', 'LineWidth', 2.0);
set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$l/\delta$','fontsize',28,'interpreter','latex');

% ylabel('$Sh*$','fontsize',28,'interpreter','latex');

 set(gca, 'XMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'YMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );

h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);

xlim([0 17]);
dim = [.58 .9 0 0];
annotation('textbox',dim,'String','(b)', 'fontsize',28,'interpreter','latex');

% %% 1 - Sh* v/s l/del
% % load invLambda_Sh_Raeff_data_concised.mat
% figure
% hold on; 
% errorbar(Sh{2,2}([1:5 7],1)./del,1.-(Sh{2,3}([1:5 7],1)./(247*0.86)), Sh{2,3}([1:5 7],2)./(247*0.86), 'ro')
% errorbar(Sh{3,2}(:,1)./del,1.-(Sh{3,3}(:,1)./(247*0.86)), Sh{3,3}(:,2)./(247*0.86), 'ks')
% errorbar(Sh{4,2}(:,1)./del,1.-(Sh{4,3}(:,1)./(247*0.86)), Sh{4,3}(:,2)./(247*0.86), 'b^')
% errorbar(Sh{5,2}(:,1)./del,1.-(Sh{5,3}(:,1)./(91*0.90)), Sh{5,3}(:,2)./(91*0.90), 'ro','MarkerFaceColor','r')
% errorbar(Sh{6,2}(:,1)./del,1.-(Sh{6,3}(:,1)./(91*0.90)), Sh{6,3}(:,2)./(91*0.90), 'ks','MarkerFaceColor','k')
% 
% % for muiltiple slopes on interface profile
% % errorbar(Sh{2,2}(:,2)./del,Sh{2,3}(:,3)./247, Sh{2,3}(:,4)./247, 'b*')
% % errorbar(Sh{3,2}(:,2)./del,Sh{3,3}(:,3)./247, Sh{3,3}(:,4)./247, 'b*')
% % errorbar(Sh{4,2}(:,2)./del,Sh{4,3}(:,3)./247, Sh{4,3}(:,4)./247, 'b*')
% % errorbar(Sh{5,2}(:,2)./del,Sh{5,3}(:,3)./91, Sh{5,3}(:,4)./91, 'bd','MarkerFaceColor','r')
% % errorbar(Sh{6,2}(:,2)./del,Sh{6,3}(:,3)./91, Sh{6,3}(:,4)./91, 'bd','MarkerFaceColor','b')
% 
% set(gca,'box','on')
% set(gca, 'LineWidth', 2.0 );
% set(gca, 'fontsize', 24.0 );
% set(gca, 'fontname', 'Times New Roman' );
% xlabel('$l$','fontsize',28,'interpreter','latex');
% 
% ylabel('$1 - Sh*$','fontsize',28,'interpreter','latex');
% 
% 
%  set(gca, 'XMinorTick', 'off');
%  set(gca, 'Ticklength', [0.02;0.01] );
%  set(gca, 'YMinorTick', 'off');
%  set(gca, 'Ticklength', [0.02;0.01] );
% 
% h = findobj(gca,'Type','line');
% set(h, 'Markersize', 8);
% set(h, 'Linewidth', 2);

%% Sh* plot fit
xx_temp = 0.1:0.1:17;
ff_temp = f_nPlumesFit(xx_temp,2.5,50, 247*0.86, 22710, 0.63);
hold on
plot(xx_temp,(coeff_all(1,1) + coeff_all(2,1).*xx_temp + coeff_all(3,1)./xx_temp).*ff_temp.*(22710/212.42), 'r--', 'LineWidth', 2.0 )
ff_temp = f_nPlumesFit(xx_temp,3.5,50, 247*0.86, 22710, 0.63);
plot(xx_temp,(coeff_all(1,2) + coeff_all(2,2).*xx_temp + coeff_all(3,2)./xx_temp).*ff_temp.*(22710/212.42), 'k--', 'LineWidth', 2.0 )

ff_temp = f_nPlumesFit(xx_temp,4.5,50, 247*0.86, 22710, 0.63);
plot(xx_temp,(coeff_all(1,3) + coeff_all(2,3).*xx_temp + coeff_all(3,3)./xx_temp).*ff_temp.*(22710/212.42), 'b--', 'LineWidth', 2.0 )

%% Sh v/s Omega
% figure
subplot(1,2,1)
hold on; 
errorbar(Om{2,3}(:,1).*22710,Sh{2,3}(:,1)./(247*0.86), Sh{2,3}(:,2)./(247*0.86), 'ro', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Om{3,3}(:,1).*22710,Sh{3,3}(:,1)./(247*0.86), Sh{3,3}(:,2)./(247*0.86), 'ks', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Om{4,3}(:,1).*22710,Sh{4,3}(:,1)./(247*0.86), Sh{4,3}(:,2)./(247*0.86), 'b^', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Om{5,3}(:,1).*9814,Sh{5,3}(:,1)./(91*0.9), Sh{5,3}(:,2)./(91*0.9), 'ro','MarkerFaceColor','r', 'LineWidth', 2.0, 'Markersize', 12)
errorbar(Om{6,3}(:,1).*9814,Sh{6,3}(:,1)./(91*0.9), Sh{6,3}(:,2)./(91*0.9), 'ks','MarkerFaceColor','k', 'LineWidth', 2.0, 'Markersize', 12)

% errorbar(Om{2,3}(:,1),Sh{2,3}(:,1)./(247*0.86), Sh{2,3}(:,2)./(247*0.86), 'r*-')
% errorbar(Om{3,3}(:,1),Sh{3,3}(:,1)./(247*0.86), Sh{3,3}(:,2)./(247*0.86), 'k*-')
% errorbar(Om{4,3}(:,1),Sh{4,3}(:,1)./(247*0.86), Sh{4,3}(:,2)./(247*0.86), 'b*-')
% errorbar(Om{5,3}(:,1),Sh{5,3}(:,1)./(91*0.9), Sh{5,3}(:,2)./(91*0.9), 'r*--')
% errorbar(Om{6,3}(:,1),Sh{6,3}(:,1)./(91*0.9), Sh{6,3}(:,2)./(91*0.9), 'k*--')

set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$\Omega \cdot Ra$','fontsize',28,'interpreter','latex');

ylabel('$Sh*$','fontsize',28,'interpreter','latex');

ss=legend('D = 2.5mm','D = 3.5mm','D = 4.5mm');
set(ss,'fontsize',24);

 set(gca, 'XMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'YMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );

h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);

dim = [.13 .9 0 0];
annotation('textbox',dim,'String','(a)', 'fontsize',28,'interpreter','latex');
%% Sh v/s h
% load invLambda_Sh_Raeff_data_concised.mat
figure
hold on; 
errorbar(Sh_height{2,2}([1:3, 5],1),Sh_height{2,3}([1:3, 5],1)./(247*0.86), Sh_height{2,3}([1:3, 5],2)./(247*0.86), 'ro-', 'LineWidth', 2.0)
errorbar(Sh_height{3,2}([1:4, 6],1),Sh_height{3,3}([1:4, 6],1)./(247*0.86), Sh_height{3,3}([1:4, 6],2)./(247*0.86), 'ks-', 'LineWidth', 2.0)
errorbar(Sh_height{4,2}(:,1),Sh_height{4,3}(:,1)./(247*0.86), Sh_height{4,3}(:,2)./(247*0.86), 'b^-', 'LineWidth', 2.0)
errorbar(Sh_height{5,2}(:,1),Sh_height{5,3}(:,1)./(247*0.86), Sh_height{5,3}(:,2)./(247*0.86), 'cd-', 'LineWidth', 2.0)


% for muiltiple slopes on interface profile
% errorbar(Sh_height{2,2}(:,2),Sh_height{2,3}(:,3)./(247*0.86), Sh_height{2,3}(:,4)./(247*0.86), 'b*')
% errorbar(Sh_height{3,2}(:,2),Sh_height{3,3}(:,3)./(247*0.86), Sh_height{3,3}(:,4)./(247*0.86), 'b*')
% errorbar(Sh_height{4,2}(:,2),Sh_height{4,3}(:,3)./(247*0.86), Sh_height{4,3}(:,4)./(247*0.86), 'b*')
% errorbar(Sh_height{5,2}(:,2),Sh_height{5,3}(:,3)./(247*0.86), Sh_height{5,3}(:,4)./(247*0.86), 'b*','MarkerFaceColor','r')

set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$h$','fontsize',28,'interpreter','latex');

ylabel('$Sh*$','fontsize',28,'interpreter','latex');

ss=legend('l/\delta = 2.78','l/\delta = 5.55','l/\delta = 8.34', 'l/\delta = 11.12','interpreter','latex');
set(ss,'fontsize',24);

 set(gca, 'XMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'YMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );

h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);

                                        %% f plots %%
%% f v/s l/del
% figure
% subplot(1,2,1)
% errorbar(X_calc_Small./0.63,f{2,3}, f{2,4}, 'ro', 'LineWidth', 2.0)
% hold on; 
% errorbar(X_calc_Medium./0.63,f{3,3}, f{3,4}, 'ks', 'LineWidth', 2.0)
% errorbar(X_calc_Large./0.63,f{4,3}, f{4,4}, 'b^', 'LineWidth', 2.0)
% errorbar(X1_calc_Small./0.63,f{5,3}, f{5,4}, 'ro','MarkerFaceColor','r', 'LineWidth', 2.0)
% errorbar(X1_calc_Medium./0.63,f{6,3}, f{6,4}, 'ks','MarkerFaceColor','k', 'LineWidth', 2.0)
% 
% set(gca,'box','on')
% set(gca, 'LineWidth', 2.0 );
% set(gca, 'fontsize', 24.0 );
% set(gca, 'fontname', 'Times New Roman' );
% xlabel('$l/\delta$','fontsize',28,'interpreter','latex');
% 
% ylabel('$f(\delta/\lambda)$','fontsize',28,'interpreter','latex');
% 
% % ss=legend('2.5mm Discs','3.5mm Discs','4.5mm Discs');
% % set(ss,'fontsize',24);
% 
%  set(gca, 'XMinorTick', 'off');
%  set(gca, 'Ticklength', [0.02;0.01] );
%  set(gca, 'YMinorTick', 'off');
%  set(gca, 'Ticklength', [0.02;0.01] );
% %  set(gca, 'XTick', [0 5 10 15] );
% %  set(gca, 'YTick', [0.2 0.4 0.6 0.8 1] );
% 
% 
% h = findobj(gca,'Type','line');
% set(h, 'Markersize', 8);
% set(h, 'Linewidth', 2.0);
% dim = [.15 .9 0 0];
% annotation('textbox',dim,'String','(a)', 'fontsize',28,'interpreter','latex');
% %% plot f_fit v/s l/del
% hold on
% x_temp = 0.4:0.1:17;
% f_temp = fFit(x_temp,2.5,50, 247*0.86, 22710, 0.63);
% plot(x_temp,f_temp,'r--', 'LineWidth', 2.0 );
% x_temp = 0.6:0.1:17;
% f_temp = fFit(x_temp,3.5,50, 247*0.86, 22710, 0.63);
% plot(x_temp,f_temp,'k--', 'LineWidth', 2.0 );
% x_temp = 0.7:0.1:17;
% f_temp = fFit(x_temp,4.5,50, 247*0.86, 22710, 0.63);
% plot(x_temp,f_temp,'b--', 'LineWidth', 2.0 );
% 
% ss=legend('D = 2.5mm','D = 3.5mm','D = 4.5mm');
% set(ss,'fontsize',24);
% % f1 = fFit(x,2.5,20, 91*0.90, 9814, 0.63);
% % plot(x,f1,'r.-');
% % x = 0.6:0.1:17;
% % f1 = fFit(x,3.5,20, 91*0.90, 9814, 0.63);
% % plot(x,f1,'k.-');
% 
% %% f v/s Omega X Ra
% subplot(1,2,2)
% errorbar(Om{2,3}(:,1).*22710,f{2,3}([1:5, 7]), f{2,4}([1:5, 7]), 'ro', 'LineWidth', 2.0)
% hold on; 
% errorbar(Om{3,3}(:,1).*22710,f{3,3}, f{3,4}, 'ks', 'LineWidth', 2.0)
% errorbar(Om{4,3}(:,1).*22710,f{4,3}, f{4,4}, 'b^', 'LineWidth', 2.0)
% errorbar(Om{5,3}(:,1).*9814,f{5,3}, f{5,4}, 'ro','MarkerFaceColor','r', 'LineWidth', 2.0)
% errorbar(Om{6,3}(:,1).*9814,f{6,3}, f{6,4}, 'ks','MarkerFaceColor','k', 'LineWidth', 2.0)
% 
% set(gca,'box','on')
% set(gca, 'LineWidth', 2.0 );
% set(gca, 'fontsize', 24.0 );
% set(gca, 'fontname', 'Times New Roman' );
% xlabel('$\Omega \times Ra$','fontsize',28,'interpreter','latex');
% 
% % ylabel('$f(\delta/\lambda)$','fontsize',28,'interpreter','latex');
% 
% %  set(gca, 'XMinorTick', 'on');
%  set(gca, 'Ticklength', [0.02;0.01] );
% %  set(gca, 'YMinorTick', 'on');
%  set(gca, 'Ticklength', [0.02;0.01] );
% %  set(gca, 'XTick', [0 5 10 15] );
% %  set(gca, 'YTick', [0.2 0.4 0.6 0.8 1] );
% 
% 
% h = findobj(gca,'Type','line');
% set(h, 'Markersize', 8);
% set(h, 'Linewidth', 2.0);
% 
% dim = [0.6 .9 0 0];
% annotation('textbox',dim,'String','(b)', 'fontsize',28,'interpreter','latex');
% %% plot f_fit v/s OmxRa
% hold on
% x_temp = 0:100:14000;
% f_temp = (0.01612.*exp(-8.562e-5.*x_temp));
% plot(x_temp,f_temp,'r--', 'LineWidth', 2.0 );

                                    %% density curve
                             
c_w = 0:0.01:1;
den = 85.935.*c_w.^3 - 217.62.*c_w.^2 + 88.425.*c_w + 1034.1;

figure;
plot(c_w, den, 'r-', 'LineWidth', 2.0);

set(gca,'box','on')
set(gca, 'LineWidth', 2.0 );
set(gca, 'fontsize', 24.0 );
set(gca, 'fontname', 'Times New Roman' );
xlabel('$c_w$','fontsize',28,'interpreter','latex');

ylabel('$\rho$ $(kg/m^3)$','fontsize',28,'interpreter','latex');

% ss=legend('l/\delta = 2.78','l/\delta = 5.55','l/\delta = 8.34', 'l/\delta = 11.12','interpreter','latex');
% set(ss,'fontsize',24);

 set(gca, 'XMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );
 set(gca, 'YMinorTick', 'off');
 set(gca, 'Ticklength', [0.02;0.01] );

h = findobj(gca,'Type','line');
set(h, 'Markersize', 8);
set(h, 'Linewidth', 2.0);