if ~exist('dhexecutado')
    dh;
    dhexecutado = true;
end

%%
figure(1);

mh12.plot(cA, 'view', [60 30], 'zoom', 1.4, 'floorlevel', -l0-0.5, 'noname', 'notiles');
export_fig('latex/figs/ex3_modelo', '-pdf', '-painters', '-transparent');