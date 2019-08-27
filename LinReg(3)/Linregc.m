function Linregc()
data=load('random_data_1.txt');
x=data(:,1);
y=data(:,2);
m=length(y);
X=[ones(m, 1), data(:,1)];
figure;
alpha=0.01;
plot(x,y,'r*','MarkerSize',8);
hold on;
theta=zeros(2,1);
for i=1:1500
    error=(X*theta)-y;
    theta=theta-((alpha/m)*X'*error);
    var = linspace(0, 1,1000);
   if i%5==0
   h=plot(var,theta(1)+theta(2)*var,'g','LineWidth',2);
    pause(0.01);
   if i<=1499
    delete(h);
   end
   end
end
hold off;
end

    



