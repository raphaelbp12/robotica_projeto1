function T0e = ex1_func(t1,t2,t3,t4,t5,t6,t7)
%EX1_FUNC
%    T0E = EX1_FUNC(T1,T2,T3,T4,T5,T6,T7)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    03-Nov-2019 20:45:41

t9 = sin(t1);
t10 = cos(t1);
t11 = cos(t3);
t12 = cos(t2);
t13 = sin(t3);
t14 = sin(t4);
t15 = t10.*t13;
t16 = t9.*t11.*t12;
t17 = t15+t16;
t18 = cos(t4);
t19 = sin(t2);
t20 = cos(t5);
t21 = t17.*t18;
t32 = t9.*t14.*t19;
t22 = t21-t32;
t23 = sin(t5);
t24 = t10.*t11;
t34 = t9.*t12.*t13;
t25 = t24-t34;
t26 = cos(t7);
t27 = sin(t6);
t28 = t14.*t17;
t29 = t9.*t18.*t19;
t30 = t28+t29;
t31 = cos(t6);
t33 = t20.*t22;
t35 = t23.*t25;
t36 = t33+t35;
t37 = t27.*t30-t31.*t36;
t38 = sin(t7);
t39 = t20.*t25;
t40 = t39-t22.*t23;
t41 = t9.*t13;
t43 = t10.*t11.*t12;
t42 = t41-t43;
t44 = t18.*t42;
t45 = t10.*t14.*t19;
t46 = t44+t45;
t47 = t9.*t11;
t48 = t10.*t12.*t13;
t49 = t47+t48;
t50 = t14.*t42;
t59 = t10.*t18.*t19;
t51 = t50-t59;
t52 = t27.*t51;
t53 = t20.*t46;
t54 = t23.*t49;
t55 = t53+t54;
t56 = t52-t31.*t55;
t57 = t20.*t49;
t58 = t57-t23.*t46;
t60 = t12.*t14;
t61 = t11.*t18.*t19;
t62 = t60+t61;
t63 = t23.*t62;
t64 = t13.*t19.*t20;
t65 = t63+t64;
t66 = t20.*t62;
t73 = t13.*t19.*t23;
t67 = t66-t73;
t68 = t31.*t67;
t69 = t12.*t18;
t74 = t11.*t14.*t19;
t70 = t69-t74;
t71 = t27.*t70;
t72 = t68+t71;
T0e = reshape([t26.*t40+t37.*t38,t26.*t58+t38.*t56,t26.*t65+t38.*t72,0.0,t26.*t37-t38.*t40,t26.*t56-t38.*t58,t26.*t72-t38.*t65,0.0,t30.*t31+t27.*t36,t27.*t55+t31.*t51,-t27.*t67+t31.*t70,0.0,t10.*(-1.08e-2)-t10.*t11.*(8.0./6.25e2)+t9.*t19.*(2.63e2./6.25e2)+t14.*t17.*3.143e-1+t30.*t31.*1.674e-1+t27.*t36.*1.674e-1+t9.*t12.*t13.*(8.0./6.25e2)+t9.*t18.*t19.*3.143e-1,t9.*(-1.08e-2)-t9.*t11.*(8.0./6.25e2)-t10.*t19.*(2.63e2./6.25e2)+t14.*t42.*3.143e-1+t27.*t55.*1.674e-1+t31.*t51.*1.674e-1-t10.*t12.*t13.*(8.0./6.25e2)-t10.*t18.*t19.*3.143e-1,t12.*(2.63e2./6.25e2)+t12.*t18.*3.143e-1-t13.*t19.*(8.0./6.25e2)-t27.*t67.*1.674e-1+t31.*t70.*1.674e-1-t11.*t14.*t19.*3.143e-1+1.78e2./6.25e2,1.0],[4,4]);
