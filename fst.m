function out = fst(x1, x2, omega, h)
%fst Summary of this function goes here
%   最速控制综合函数
d = omega * h;
d0 = x1 + h * d;
y = x1 + h * x2;
a0 = sqrt(d * d + 8 * omega * abs(y));
if abs(y) > d0
    a = x2 + (a0 - d) / 2 * sign(y);
else
    a = x2 + y / h;
end

if abs(a) > d
    out = - omega * sign(a);
else
    out = - omega * a / d;
end

end

