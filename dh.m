clear;

config;

%             th    d               a       alpha      type  offset    mdh
L(1) = Link([ 0     (l0 + l1z)      0       pi/2        0     -pi/2], 'standard');
L(2) = Link([ 0     (l2x+l3x)       0       -pi/2       0     0], 'standard');
L(3) = Link([ 0     (l2z+l3z)       0       pi/2        0     0],   'standard');
L(4) = Link([ 0     (l3x+l4x)       0       -pi/2       0     0],   'standard');
L(5) = Link([ 0     (l4z+l5)        0       pi/2        0     0],   'standard');
L(6) = Link([ 0     0       	    0       -pi/2       0     0], 'standard');
L(7) = Link([ 0     (l6+l7)         0       0           0     pi/2], 'standard');

mh12 = SerialLink(L, 'name', 'MH12', 'manufacturer', 'Yaskawa', 'comment', 'Alex Fernandes Neves');

%L_3 = L(1:2);
%L_3 = [L_3 Link([ 0     0	   sqrt((l3a + l4)^2 + (l3b)^2)        pi/2        0     atan2(-(l3a + l4), l3b)],   'standard')];
%mh12_3 = SerialLink(L_3, 'name', 'MH12_3', 'manufacturer', 'Yaskawa', 'comment', 'Alex Fernandes Neves');
