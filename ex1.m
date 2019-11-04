 
clear;

syms t1 t2 t3 t4 t5 t6 t7 real;

config;


x = [1 0 0]';
y = [0 1 0]';
z = [0 0 1]';


R01 = rotz(t1);
R12 = rotx(t2);
R23 = rotz(t3);
R34 = rotx(t4);
R45 = rotz(t5);
R56 = rotx(t6);
R67 = rotz(t7);

p01 = l0*z;
p12 = l1z*z - l1x*x;
p23 = l2z*z - l2x*x;
p34 = l3z*z - l3x*x;
p45 = l4z*z - l4x*x;
p56 = l5*z;
p67 = l6*z;
p7e = l7*z;

T01 = [R01 p01; zeros(1,3) 1];
T12 = [R12 p12; zeros(1,3) 1];
T23 = [R23 p23; zeros(1,3) 1];
T34 = [R34 p34; zeros(1,3) 1];
T45 = [R45 p45; zeros(1,3) 1];
T56 = [R56 p56; zeros(1,3) 1];
T67 = [R67 p67; zeros(1,3) 1];
T7e = [eye(3) p7e; zeros(1,3) 1];

T0e = T01*T12*T23*T34*T45*T56*T67*T7e


%matlabFunction(T0e, 'File','ex1_func');
ex1_func = matlabFunction(T0e);
