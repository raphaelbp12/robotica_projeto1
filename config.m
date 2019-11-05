 

% parametros
l0 = 0.1564;

l1z = 0.1284;
l1x = 0.0054;

l2z = 0.2104;
l2x = 0.0054;

l3z = 0.2104;
l3x = 0.0064;

l4z = 0.2084;
l4x = 0.0064;

l5 = 0.1059;
l6 = 0.1059;
l7 = 0.0615;

% configurações do manipulador
cA = [0 0 0 0 0 0 0];
cB = [0 -pi/2 0 0 pi/2 pi/2 0];
cC = [0 -pi/2 0 pi/2 0 0 0];
cD = [pi/2 -pi/2 0 0 0 0 0];
cE = deg2rad([90 -120 0 80 0 -45 0]);
