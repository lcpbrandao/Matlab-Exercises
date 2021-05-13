function cell2 = replace(cell,c1,c2)
for ii = 1:length(cell)
    for jj = 1:length(cell{ii})
        if cell{ii}(jj) == c1
            cell2{ii}(jj) = c2;
        else
            cell2{ii}(jj) = cell{ii}(jj);
        end
    end
end
end
            