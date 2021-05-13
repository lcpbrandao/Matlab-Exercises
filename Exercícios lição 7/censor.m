function cell2 = censor(cell,string)
newcell = cell;
difzero = 0;
igualzero = length(newcell);
mark = 0;
pos = strfind(newcell,string);
for ii = 1:length(newcell)
    if pos{ii} ~= 0
        newcell{ii} = [];
    end
end
for ii = 1:length(newcell)
    if newcell{ii} ~= 0
        difzero = difzero + 1;
        igualzero = igualzero - 1;
    end
end
if igualzero == length(newcell)
    cell2 = {};
else
    for jj = 1:difzero
        for ii = 1:length(newcell)
            if newcell{ii} ~= 0 
                if mark < ii
                    cell2{jj} = newcell{ii};
                    mark = ii;
                    break;
                else
                    continue;
                end
            end
        end
    end
end
end
