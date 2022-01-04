function x = RMS(X, Xestimation)
%Srednja kvadratna vrijednost
    l = length(X);
    if l < length(Xestimation)
        Xestimation = Xestimation(1:l);
    elseif l > length(Xestimation)
        l = length(Xestimation);
        X = X(1:l);
    end
        
    x = sum( (X - Xestimation).^2 )/l;
end