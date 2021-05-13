function score = bowl(pins)
score = 0;

if sum(pins(1:end) >= 0) ~= length(pins) %Verifica se todos os valores são positivos
    score = -1;
    return;
end

if sum(pins(1:end) > 10) > 0 %Verifica se todos os valores são <11
    score = -1;
    return;
end

if length(pins) < 12 %Verifica o tamanho do vetor pins
    score = -1;
    return;
end
if length(pins) > 21
    score = -1;
    return;
end
 
a = 1; 
frame = 1;
while a < length(pins)+1 %Verifica se é possível a distribuição de pinos dada
    if frame > 10
        score = -1;
        return;
    else
        if pins(a) == 10 && frame < 10
            a = a + 1;
            frame = frame + 1;
        else
            if pins(a) == 10 && frame == 10
                if a == length(pins)-2
                    a = a + 3;
                else 
                    score = -1;
                    return;
                end
            else
                if pins(a) < 10 && frame < 10
                        if a == length(pins)
                            score = -1;
                            return;
                        else
                            if pins(a) + pins(a+1) > 10
                                score = -1;
                                return;
                            else  
                                a = a + 2;
                                frame = frame + 1;
                            end
                        end
                else
                    if pins(a) < 10 && frame == 10
                        if a == length(pins)
                            score = -1;
                            return;
                        else
                            if pins(a)+pins(a+1) == 10 && a == length(pins)-2
                                a = a + 3;
                                frame = frame + 1;
                            else 
                                if pins(a)+pins(a+1) == 10 && a == length(pins)-1
                                    score = -1;
                                    return;
                                else
                                    if pins(a)+pins(a+1) < 10  && a == length(pins)-1
                                        a = a + 2;
                                        frame = frame + 1;
                                    else
                                        if pins(a)+pins(a+1) < 10  && a == length(pins)-2
                                            score = -1;
                                            return;
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if (a == length(pins) && frame < 10) || (a == length(pins)-1 && frame < 10)
        score = -1;
        return;
    end
end

if sum(pins(1:10)) == 100 && length(pins) > 12
    score = -1;
    return;
end

i = 1;
while i < length(pins) %Varre o vetor para calcular score
    if pins(i) == 10
        if i == length(pins) - 1
            i = i + 1;
        else
            if i == length(pins) - 2
                score = score + 10 + pins(i+1) + pins(i+2);
                return;
            else            
                score = score + 10 + pins(i+1) + pins(i+2);
                i = i + 1;
            end
        end
    else
        if pins(i) < 10
            if pins(i) + pins(i+1) == 10
                score = score + 10 + pins(i+2);
                i = i + 2;
            else
                score = score + pins(i) + pins(i+1);
                i = i + 2;
            end
        end
    end
end
end
        
    
    
        
    