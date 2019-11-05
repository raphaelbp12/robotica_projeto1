%             th    d               a       alpha      type  offset    mdh
L(1) = Link([ 0     0.2848      0       pi/2        0     0], 'standard');
L(2) = Link([ 0     0           0       -pi/2       0     0], 'standard');
L(3) = Link([ 0     0.4208      0       pi/2        0     0],   'standard');
L(4) = Link([ 0     0           0       -pi/2       0     0],   'standard');
L(5) = Link([ 0     0.3145      0       pi/2        0     0],   'standard');
L(6) = Link([ 0     0       	0       -pi/2       0     0], 'standard');
L(7) = Link([ 0     0.1674      0       0           0     0], 'standard');

kg3 = SerialLink(L, 'name', 'KGen3', 'manufacturer', 'Kinova', 'comment', 'RBP');