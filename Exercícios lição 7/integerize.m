function conv_class = integerize(A)
[a,b] = size(A);
maior = 0;
for ii = 1:a
    for jj = 1:b
        if A(ii,jj) > maior
            maior = A(ii,jj);
        else
            continue;
        end
    end
end
if maior <= (2^8-1)
    conv_class = 'uint8';
else
    if maior <= (2^16-1)
        conv_class = 'uint16';
    else
        if maior <= (2^32-1)
            conv_class = 'uint32';
        else
            if maior <= (2^64-1)
                conv_class = 'uint64';
            else
                conv_class = 'NONE';
            end
        end
    end
end
end
        