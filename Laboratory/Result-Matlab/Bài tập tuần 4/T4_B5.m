clear all
close all
clc

for i = 2 : 1000 - 1
   S = 0;
   for j = 1 : i/2
       if mod(i, j) == 0
           S = S + j;
       end;
   end;
   if i == S;
       fprintf('%0.0f\t', i);
   end;
end;
fprintf('\n');
       