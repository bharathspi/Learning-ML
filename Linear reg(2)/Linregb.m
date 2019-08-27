
function Linregb()
data=load('random_data_1.txt');
x=data(:,1);
y=data(:,2);
m=length(y);
figure;
plot(x,y,'rx','MarkerSize',10);
hold on;
ylabel('random output');
xlabel('random input');
X = [ones(m, 1), data(:,1)];
theta=pinv(X'*X)*X'*y;
var = linspace(0, 1,1000);
plot(var,theta(1)+theta(2).*var);
hold off;

end