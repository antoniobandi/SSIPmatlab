%% Identifikacija potpisa
[ABog, xog, yog, partsog] = importSig("ABoriginal.txt");
ABog = normalization(ABog);
xog = normalization(xog);
yog = normalization(yog);
hABog = ABog(end:-1:1);
hxog = xog(end:-1:1);
hyog = yog(end:-1:1);
[ABf, xf, yf, partsf] = importSig("ABfejk.txt");
ABf = normalization(ABf);
xf = normalization(xf);
yf = normalization(yf);
[ABj, xj, yj, partsj] = importSig("JP.txt");
ABj = normalization(ABj);
xj = normalization(xj);
yj = normalization(yj);

% Provjera broja segmenata
if partsf ~= partsog
    warning('Broj segmenata ne odgovara originalnom potpisu');
end
% Obična RMS greška
RMSf = RMS(ABog, ABf);
RMSj = RMS(ABog, ABj);
RMSfx = RMS(xog, xf);
RMSfy = RMS(yog, yf);
RMSjx = RMS(xog, xj);
RMSjy = RMS(yog, yj);

RABog = conv(hABog, ABog);
RABf = conv(hABog, ABf);
RABj = conv(hABog, ABj);
Rxog = conv(hxog, xog);
Ryog = conv(hyog, yog);
Rxf = conv(hxog, xf);
Ryf = conv(hyog, yf);
Rxj = conv(hxog, xj);
Ryj = conv(hyog, yj);

figure('name','Usporedba')
subplot(2, 2, 1), plot(Rxog);
xlabel('k')
title('Rxog')
subplot(2, 2, 2), plot(Ryog);
xlabel('k')
title('Ryog')
subplot(2, 2, 3), plot(Rxf);
xlabel('k')
title('Rxf')
subplot(2, 2, 4), plot(Ryf);
xlabel('k')
title('Ryf')

% [px,hx,statsx] = ranksum(Rxog, Rxj);
% [py,hy,statsy] = ranksum(Ryog, Ryj);
