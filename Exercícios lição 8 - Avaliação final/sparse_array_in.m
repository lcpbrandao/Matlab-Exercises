function array = sparse_array_in(array_file)
fid = fopen(array_file,'r');
if fid < 0
   array = [];
   return;
end
rows = fread(fid,1,'uint32');
cols = fread(fid,1,'uint32');
sum = fread(fid,1,'uint32');

for ii = 1:3:(4*sum)
    a = fread(fid,1,'uint32');
    b = fread(fid,1,'uint32');
    array(a,b) = fread(fid,1,'double');
end

[a,b] = size(array);
if a ~= rows
    array(end+1:end+(rows-a),:) = 0;
end
if b ~= cols
    array(:,end+1:end+(cols-b)) = 0;
end
    
fclose(fid);
end