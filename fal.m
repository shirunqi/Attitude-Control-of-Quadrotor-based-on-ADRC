function out = fal( e, a, delta )
%fal Summary of this function goes here
%   Detailed explanation goes here
if abs(e) > delta
    out = abs(e) ^ a * sign(e);
else
    out = e / (delta ^ (1 - a));
end

end

