function a = sparse_array_out(array,array_file)
fid = fopen(array_file,'w+');
if fid < 0
    error('Erro ao abrir o programa %s\n', array_file);
    a = 0;
else
    a = 1;
end
[rows,cols] = size(array);
difzero = array ~= 0;
sumdifzero = sum(difzero);
sum2 = sum(sumdifzero);
fwrite(fid,rows,'uint32');
fwrite(fid,cols,'uint32');
fwrite(fid,sum2,'uint32');

for ii = 1:rows
    for jj = 1:cols
        if array(ii,jj) ~= 0
            fwrite(fid,ii,'uint32');
            fwrite(fid,jj,'uint32');
            fwrite(fid,array(ii,jj),'double');
        end
    end
end

fclose(fid);
end
