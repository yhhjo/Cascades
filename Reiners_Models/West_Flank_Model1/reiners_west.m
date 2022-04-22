%load data structure with west flank Reiners data
%AHe and AFT are just the first few columns of the TC output from 
%tqtec until the model converges on the oldest age. All I did was import
%these as matrices and add to the structure.mat file
load('west.mat')
sample=west.sample;
elevation=west.elevation;
elevation=elevation./10^3;
age=west.age;
error=west.error;
AHe=west.AHe;
AFT=west.AFT;

%plot of West Flank data and TC data from tqtec
hold on
box on
title('West Flank Model 1 Reiners Data');
p8=plot(abs((AFT(:,1)-85)),(AFT(:,2)),'--k','LineWidth',1.2); %flip x-xaxis ages from model
p7=plot(abs((AHe(:,1)-85)),(AHe(:,2)),'--m','LineWidth',1.2); %flip x-xaxis ages from model
%plot(abs((AFT(:,1)-85)),(AFT(:,2)-0.5),'--k','LineWidth',1.2); %change offset for tqtec depth
%plot(abs((AHe(:,1)-85)),(AHe(:,2)-0.5),'--m','LineWidth',1.2); %change offset for tqtec depth
p1=plot(age(1),elevation(1),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.4660 0.6740 0.1880]);
p2=plot(age(2:7),elevation(2:7),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.3010 0.7450 0.9330]);
p3=plot(age(8:12),elevation(8:12),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.6350 0.0780 0.1840]);
p4=plot(age(13:22),elevation(13:22),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor',[0.9290 0.6940 0.1250]);
p5=plot(age(23),elevation(23),'o','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor','k');
p6=plot(age(24:end),elevation(24:end),'^','MarkerSize', 8, 'MarkerEdgeColor','k',...
'MarkerFaceColor','k');
xlabel('Age (Ma)')
ylabel('Elevation (km)')
xlim([0 100])
ylim([0 3]);
legend([p1,p2,p3,p4,p5,p6,p7,p8],{'AHe Index','AHe Mt. Rainier',...
    'AHe MSB','AHe Granite Mt.','ZHe MSB','AFT','AHe (60^o)','AFT (120^o)'},'location',...
    'southeast','FontSize',10)
%legend([p1,p2,p3,p4,p5,p6],{'AHe Index','AHe Mt. Rainier',...
% 'AHe MSB','AHe Granite Mt.','ZHe MSB','AFT'},'location','northeast','FontSize',10)