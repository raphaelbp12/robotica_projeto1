%
% Elbow arm example
%

close all;

config;

%
x = [1 0 0]';
y = [0 1 0]';
z = [0 0 1]';

h1=[0;0;1];
h2=[1;0;0];
h3=[0;0;1];
h4=[1;0;0];
h5=[0;0;1];
h6=[1;0;0];
h7=[0;0;1];

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

% scale=0.3;plotsize=3;
% fignum=1; figure(fignum);
% theta=1;
% while size(theta)>0
%   theta=input(['enter theta vector (',num2str(n),'x1): ']);
%   if size(theta)>0
%     clf(fignum);
%     [R,p]=fwdkin(theta,type,H,P,n);
%     disp(R);disp(p)
%     showarm(theta,type,H,P,n,fignum,scale,plotsize);
%     disp('press any key to continue ...');
%     pause;
%   end
% end

fignum = 1;
scale=0.3;
plotsize=2;

theta = cA';
%fwdkin(theta,type,H,P,n);
showarm(theta,type,H,P,n,fignum,scale,plotsize);
axis([-0.5 0.5 -0.5 0.5 -0.5 1.5]);
view([70 10])
xlabel('X')
ylabel('Y')
zlabel('Z')
export_fig('latex/figs/ex1_a', '-pdf', '-painters', '-transparent');
clf(figure(fignum));

theta = cB';
%fwdkin(theta,type,H,P,n);
showarm(theta,type,H,P,n,fignum,scale,plotsize);
axis([-0.5 1.0 -0.5 1.5 -0.5 1.0]);
view([60 30])
xlabel('X')
ylabel('Y')
zlabel('Z')
export_fig('latex/figs/ex1_b', '-pdf', '-painters', '-transparent');
clf(figure(fignum));

theta = cC';
%fwdkin(theta,type,H,P,n);
showarm(theta,type,H,P,n,fignum,scale,plotsize);
axis([-1 1 -0.5 1.5 -0.5 1.5]);
view([45 10])
xlabel('X')
ylabel('Y')
zlabel('Z')
export_fig('latex/figs/ex1_c', '-pdf', '-painters', '-transparent');