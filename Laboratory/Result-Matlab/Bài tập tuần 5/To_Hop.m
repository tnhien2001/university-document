function I = To_Hop(n, k)

a = Giai_thua(n);
b = Giai_thua(k);
c = Giai_thua(n - k);
C = a / (b * c);
I = C;