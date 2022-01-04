function [xnorm] = normalization(x)
    xnorm = (x - mean(x))/std(x);
end