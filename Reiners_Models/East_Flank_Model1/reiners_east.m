%load data structure with east flank Reiners data
%AHe and AFT are just the first few columns of the TC output from 
%tqtec until the model converges on the oldest age. All I did was import
%these as matrices and add to the structure.mat file
load('east.mat')
sample=east.sample;
elevation=east.elevation;
elevation=elevation./10^3;
age=east.age;
error=east.error;
AHe=east.AHe;
AFT=east.AFT;

%plot of East Flank data and TC data from tqtec
hold on
box on
title('East Flank Model 1 Reiners Data');
%p7=plot(abs((AFT(:,1)-85)),(AFT(:,2)),'-k','LineWidth',1.2); %flip x-xaxis ages from model
%p6=plot(abs((AHe(:,1)-85)),(AHe(:,2)),'-m','LineWidth',1.2); %flip x-axis ages from model
p7=plot(abs((AFT(:,1)-85)),(AFT(:,2)-0.5),'--k','LineWidth',1.2); %change offset for tqtec depth
p6=plot(abs((AHe(:,1)-85)),(AHe(:,2)-0.5),'--m','LineWidth',1.2); %change offset for tqtec depth
p1=plot(age(1:25),elevation(1:25),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.4660 0.6740 0.1880]);
p2=plot(age(26:31),elevation(26:31),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.3010 0.7450 0.9330]);
p3=plot(age(32:39),elevation(32:39),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.6350 0.0780 0.1840]);
p4=plot(age(40:41),elevation(40:41),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.9290 0.6940 0.1250]);
p5=plot(age(42:end),elevation(42:end),'^','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor','k');
xlabel('Age (Ma)')
ylabel('Elevation (km)')
ylim([0 3]);
legend([p1,p2,p3,p4,p5,p6,p7],{'AHe FOJ','AHe Mt. David','AHe MSB','ZHe MSB', 'AFT','AHe (60^o)','AFT (120^o)'},'location',...
    'southeast','FontSize',10)
%legend([p1,p2,p3,p4],{'AHe FOJ','AHe Mt. David','AHe MSB','ZHe MSB'},'location',...
%    'southeast','FontSize',10)