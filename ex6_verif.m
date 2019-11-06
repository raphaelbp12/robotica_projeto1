if ~exist('dhexecutado') % DH apenas para comparar no final
    dh;
    dhexecutado = true;
end

close all;

config;

%
x = [1 0 0]';
y = [0 1 0]';
z = [0 0 1]';

h1 = z;
h2 = x;
h3 = z;
h4 = x;
h5 = z;
h6 = x;
h7 = z;

H=[h1 h2 h3 h4 h5 h6 h7];

p01 = l0*z;
p12 = l1z*z - l1x*x;
p23 = l2z*z - l2x*x;
p34 = l3z*z - l3x*x;
p45 = l4z*z - l4x*x;
p56 = l5*z;
p67 = l6*z;
p7e = l7*z;

P=[p01 p12 p23 p34 p45 p56 p67];
type=[0 0 0 0 0 0 0]; % 6R robot
n=7;

theta = cA';
JA = jacob(theta,type,H,P,n);
JAdh = mh12.jacob0(theta);
theta = cB';
JB = jacob(theta,type,H,P,n);
JBdh = mh12.jacob0(theta);
theta = cC';
JC = jacob(theta,type,H,P,n);
JCdh = mh12.jacob0(theta);
