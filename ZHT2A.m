clf;
figure;
hold on;
xlim([-0.05 0.05])
ylim([-0.05 0.05])
grid on;

%Οι τεσσεριες μπροστινες κορυφες
vAf = [-2 -0.5 5];
vBf = [-2 0.5 5];
vCf = [-1 0.5 5];
vDf = [-1 -0.5 5];

% Οι τεσσεριες πισω κορυφες 
 vAb = [-2 -0.5 6];
 vBb = [-2 0.5 6];
 vCb = [-1 0.5 6];
 vDb = [-1 -0.5 6];

 %Η μπροστινη εδρα
 drawLine(projectVetrex(vAf), projectVetrex(vBf), 'blue');
 drawLine(projectVetrex(vBf), projectVetrex(vCf), 'blue');
 drawLine(projectVetrex(vCf), projectVetrex(vDf), 'blue');
 drawLine(projectVetrex(vDf), projectVetrex(vAf), 'blue');

 %Η πισω εδρα
 drawLine(projectVetrex(vAb), projectVetrex(vBb), 'red');
 drawLine(projectVetrex(vBb), projectVetrex(vCb), 'red');
 drawLine(projectVetrex(vCb), projectVetrex(vDb), 'red');
 drawLine(projectVetrex(vDb), projectVetrex(vAb), 'red');

 %Οι δυο πλαινες εδρες
 drawLine(projectVetrex(vAf), projectVetrex(vAb), 'green');
 drawLine(projectVetrex(vBf), projectVetrex(vBb), 'green');
 drawLine(projectVetrex(vCf), projectVetrex(vCb), 'green');
 drawLine(projectVetrex(vDf), projectVetrex(vDb), 'green');

function drawLine(v1, v2, color)
line([v1(1) v2(1)],[v1(2) v2(2)], 'color', color)
end
function res = projectVetrex(v)

xo=0
yo=0
Xo=0
Yo=0
Zo=0
f=0.1;

x = (f*(v(1)-Xo)/(v(3)-Zo))+xo;
y = (f*(v(2)-Yo)/(v(3)-Zo))+yo;
res = [x y];
end