function sumletters = letter_counter(text_file)
fid = fopen(text_file,'rt');
if fid < 0
    sumletters = -1;
    return;
end

sumletters = 0;
oneletter = fgets(fid);

while ischar(oneletter)
    count = isletter(oneletter);
    sumletters = sumletters + sum(count);
    oneletter = fgets(fid);
end

fclose(fid);
end
