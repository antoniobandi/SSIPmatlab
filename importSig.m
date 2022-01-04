function [sig, x, y, parts] = importSig(StringFileName)
Signature = importdata(StringFileName);
parts = Signature(1, 1);
sig = Signature(2:end, 1);
N = length(sig);
x = zeros(1, N/2);
y = zeros(1, N/2);
count = 1;

for i = 1:N
    if mod(i, 2) == 1
        x(count) = sig(i);
    else
        y(count) = sig(i);
        count = count + 1;
    end
end
end