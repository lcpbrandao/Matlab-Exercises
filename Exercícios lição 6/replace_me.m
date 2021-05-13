function w = replace_me(v,a,b,c)
   x = sum(v==a);
   w = zeros(1,length(v)+x);
   pos = 1;
   count = 0;
if x == 0
    for ii = 1:length(v)        
        w(ii) = v(ii);
    end
else
if nargin == 4    % 4 argumentos na entrada
    for ii = 1:length(v) 
        if v(ii)==a && count == 0
            w(1:ii-1) = v(1:ii-1);
            w(ii) = b;
            w(ii+1) = c;
            w(end-x+1:-1:ii+2) = v(end:-1:ii+1);
            pos = ii;
            count = count + 1;
            continue;
        end
        if v(ii)==a && count > 0
            w(pos+count+1:ii+count-1) = v(pos+1:ii-1);
            w(ii+count) = b;
            w(ii+count+1) = c;
            w(end-x+1+count:-1:ii+2+count) = v(end:-1:ii+1);
            pos = ii;
            count = count + 1;
        end
    end
elseif nargin == 3    % valor de 'c' omitido
        for ii = 1:length(v) 
            if v(ii)==a && count == 0
                w(1:ii-1) = v(1:ii-1);
                w(ii) = b;
                w(ii+1) = b;
                w(end-x+1:-1:ii+2) = v(end:-1:ii+1);
                pos = ii;
                count = count + 1;
                continue;
            end
            if v(ii)==a && count > 0
                w(pos+count+1:ii+count-1) = v(pos+1:ii-1);
                w(ii+count) = b;
                w(ii+count+1) = b;
                w(end-x+1+count:-1:ii+2+count) = v(end:-1:ii+1);
                pos = ii;
                count = count + 1;
            end
        end
elseif nargin == 2    % valor de 'b' e 'c' omitidos
            for ii = 1:length(v) 
                if v(ii)==a && count == 0
                    w(1:ii-1) = v(1:ii-1);
                    w(ii) = 0;
                    w(ii+1) = 0;
                    w(end-x+1:-1:ii+2) = v(end:-1:ii+1);
                    pos = ii;
                    count = count + 1;
                    continue;
                end
                if v(ii)==a && count > 0
                    w(pos+count+1:ii+count-1) = v(pos+1:ii-1);
                    w(ii+count) = 0;
                    w(ii+count+1) = 0;
                    w(end-x+1+count:-1:ii+2+count) = v(end:-1:ii+1);
                    pos = ii;
                    count = count + 1;
                end
            end
end
end
end