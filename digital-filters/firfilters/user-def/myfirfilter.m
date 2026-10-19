function y = myfirfilter(b,x)

N = length(b);
L = length(x);

x = [zeros(1,N-1) x];

for n = 1:L
    y(n) = 0;

    for k = 1:N
        y(n) = y(n) + b(k)*x(n+N-k);
    end
end

end
