if ~exist('dhexecutado')
    dh;
    dhexecutado = true;
end

%%
figure(1);

mh12.plot(cA, 'view', [60 30], 'zoom', 1.4, 'floorlevel', -l0-0.5, 'noname', 'notiles');
export_fig('latex/figs/ex2_a', '-pdf', '-painters', '-transparent');

mh12.plot(cB, 'view', [60 30], 'zoom', 1.4, 'floorlevel', -l0-0.5, 'noname', 'notiles');
export_fig('latex/figs/ex2_b', '-pdf', '-painters', '-transparent');

mh12.plot(cC, 'view', [60 30], 'zoom', 1.4, 'floorlevel', -l0-0.5, 'noname', 'notiles');
export_fig('latex/figs/ex2_c', '-pdf', '-painters', '-transparent');