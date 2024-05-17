clear all
close all
clc

B = [1 -1 5 -1; 1 1 -2 3; 3 -1 8 1; 1 3 -9 7]

B(2, :) = B(2, :) + -B(2, 1)/B(1, 1) * B(1, :)
B(3, :) = B(3, :) + -B(3, 1)/B(1, 1) * B(1, :)
B(4, :) = B(4, :) + -B(4, 1)/B(1, 1) * B(1, :)

B(3, :) = B(3, :) + -B(3, 2)/B(2, 2) * B(2, :)
B(4, :) = B(4, :) + -B(4, 2)/B(2, 2) * B(2, :)

r = 0;
for i = 1 : size(B, 1)
    S = 0;
    for j = 1 : size(B, 2)
        if B(i, j) == 0
            S = S + 1;
        end;
    end;
    if S == size(B, 2)
        r = r + 1;
    end;
end;
if r == rank(B)
    disp('Rank dung voi ham MATLAB');
else
    disp('Rank sai voi ham MATLAB');
end;