function I = tamgiacvuong(A, a, b)

I = 0;
B = [A(1), A(2) + a];
C = [A(1) + b, A(2)];
X = [A', B', C', A'];
line(X(1, :), X(2, :));
text(A(1) - 0.2, A(2) - 0.2, 'A');
text(B(1) - 0.2, B(2) + 0.2, 'B');
text(C(1) + 0.2, C(2) - 0.2, 'C');
axis ([A(1) - 1, C(1) + 1, A(2) - 1, B(2) + 1]);
