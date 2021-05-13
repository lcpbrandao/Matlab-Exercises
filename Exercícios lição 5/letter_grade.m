function [grade] = letter_grade(n)
if n < 61
    grade = 'F';
else
    if n >= 61 && n <= 70
        grade = 'D';
    else
        if n >= 71 && n <= 80
            grade = 'C';
        else
            if n >= 81 && n <= 90
                grade = 'B';
            else grade = 'A';
            end
        end
    end
end