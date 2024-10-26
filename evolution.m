function [MSE, R2]=evolution(T,Tpre)
% T实际值，列向量
% Tpre预测值，列向量
    N = length(T);
    R2 = (N * sum(Tpre .* T) - sum(Tpre) * sum(T))^2 / ((N * sum((Tpre).^2) - (sum(Tpre))^2) * (N * sum((T).^2) - (sum(T))^2));

    MSE = 1/N * sum(power(Tpre - T,2));
    
end