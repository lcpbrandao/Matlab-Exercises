function [row,col,numrows,numcols,summa] = maxsubsum(A)
summa = 0;
sum1 = 0;
row = 1;
col = 1;
[a,b] = size(A);
maiorzero = A > 0;

if sum(sum(maiorzero)) == a*b %Todos os valores são >0
    summa = sum(sum(A));
    [numrows,numcols] = size(A);
    return;
else
    if sum(sum(maiorzero)) ~= a*b %Existem valores < 0
        B = A < 0;
        jj = 1;
        for i = 1:a
            while jj < b+1
            if B(ii,jj) == 1 %Itens que não somam
               jj = jj + 1;
            else
                if B(ii,jj) == 0 %Itens que somam
                    summa = summa + A(ii,jj);
                    row = ii;
                    col = jj;
                    jj = jj + 1;
                end
            end
            [numrows, numcols] = size(summa);
        end
    end
end
end



