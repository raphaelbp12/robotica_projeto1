if ~exist('ex1executado')
    ex1;
    ex1executado = true;
end

h1 = z;
h2 = x;
h3 = z;
h4 = x;
h5 = z;
h6 = x;
h7 = z;

R02 = R01*R12;
R03 = R02*R23;
R04 = R03*R34;
R05 = R04*R45;
R06 = R05*R56;
R07 = R06*R67;

p77 = zeros(3,1)
p67 = p67;
p57 = p56 + R56*p67;
p47 = p45 + R45*p57;
p37 = p34 + R34*p47;
p27 = p23 + R23*p37;
p17 = p12 + R12*p27;

J7 = [cross(h1,R01*p17) cross(R01*h2,R02*p27) cross(R02*h3,R03*p37) cross(R03*h4,R04*p47) cross(R04*h5,R05*p57) cross(R05*h6,R06*p67) cross(R06*h7,R07*p77) ;
    R01*h1 R02*h2 R03*h3 R04*h4 R05*h5 R06*h6 R07*h7];
J7 = vpa(simplify(J7));


ex5_func = matlabFunction(J7);
JA = ex5_func(cA(1), cA(2), cA(3), cA(4), cA(5), cA(6))
JB = ex5_func(cB(1), cB(2), cB(3), cB(4), cB(5), cB(6))
JC = ex5_func(cC(1), cC(2), cC(3), cC(4), cC(5), cC(6))
