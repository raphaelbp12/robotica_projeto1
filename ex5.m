if ~exist('dhexecutado')
    dh;
    dhexecutado = true;
end

%%
figure(1);

qResposta = mh12.ikine(Tbe_5, 'q0', cBase);

mh12.plot(cBase, 'view', [30 30], 'zoom', 1.4, 'floorlevel', -l0-0.5, 'noname', 'notiles');
export_fig('latex/figs/ex5_inicial', '-pdf', '-painters', '-transparent');

mh12.plot(qResposta, 'view', [30 30], 'zoom', 1.4, 'floorlevel', -l0-0.5, 'noname', 'notiles');
export_fig('latex/figs/ex5_resposta', '-pdf', '-painters', '-transparent');