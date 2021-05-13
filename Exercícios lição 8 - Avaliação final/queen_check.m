function no_thr = queen_check(board)
no_thr = 1; %Saída 1 por definição

for ii = 1:8 %Checa linhas e colunas
    if sum(board(ii,:)) > 1
        no_thr = 0;
        break;
    end
end
for jj = 1:8
    if sum(board(:,jj)) > 1
        no_thr = 0;
        break;
    end
end

qtde1s = sum(sum(board)); %Checa diagonais
ii = 1;
jj = 1;
fim = 0;
while fim ~= qtde1s
    if board(ii,jj) == 0
        jj = jj + 1;
            if jj > 8;
                ii = ii + 1;
                jj = 1;
            end
        continue;
    end
    if board(ii,jj) == 1
        fim = fim + 1;
        a = ii;
        b = jj;
        k = 1;
        while k < 9
            if a-k > 0 && b-k > 0
                if board(a-k,b-k) == 1
                    no_thr = 0;
                    break;
                end
            end
            if a-k > 0 && b-k > 0 && a+k < 9 && b+k < 9
                if board(a-k,b+k) == 1
                    no_thr = 0;
                    break;
                else
                    if board(a+k,b-k) == 1
                        no_thr = 0;
                        break;
                    end
                end
            end
            if a+k < 9 && b+k < 9                      
                if board(a+k,b+k) == 1
                    no_thr = 0;
                    break;
                end
            end
            k = k + 1;
        end
        jj = jj + 1;
        if jj > 8;
                ii = ii + 1;
                jj = 1;
        end
    end
end
end
        
    

