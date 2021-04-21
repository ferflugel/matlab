% This code was written so it can solve system of
% equations with complex coefficients. 

% Written by Fernando Assad and Nathan Henry

% IMPORTANT: 
% the output will always be in the phasor
% form (magnitude / angle in degrees).  

syms v1 v2 v3 v4 v5;
eqns = [
(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 + (0 + 0i)*v4 + (0 + 0i)*v5 == 0
(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 + (0 + 0i)*v4 + (0 + 0i)*v5 == 0
(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 + (0 + 0i)*v4 + (0 + 0i)*v5 == 0
%(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 + (0 + 0i)*v4 + (0 + 0i)*v5 == 0
%(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 + (0 + 0i)*v4 + (0 + 0i)*v5 == 0
];

S = solve(eqns, [v1, v2, v3, v4, v5]);

[angle, magnitude] = cart2pol(real(S.v1), imag(S.v1));
v1 = S.v1
v1_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v2), imag(S.v2));
v2 = S.v2
v2_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v3), imag(S.v3));
v3 = S.v3
v3_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v4), imag(S.v4));
v4 = S.v4
v4_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v5), imag(S.v5));
v5 = S.v5
v5_ph = [double(magnitude), double((180/pi) * angle)]


% Functions

function Z_series = series(Z)
    Z_series = sum(Z, 'all');
end

function Z_parallel = parallel(Z)
    Z_parallel = (sum(Z.^-1, 'all'))^-1;
end

function Z_capacitor = z_cap(C, w)
    Z_capacitor = 1/(1i*w*C);
end

function Z_inductor = z_ind(L, w)
    Z_inductor = (1i*w*L);
end

function [mag, theta] = phasor(abi)
    mag = abs(abi);
    theta = (180 / pi) * angle(abi);
end

function complex = algebraic(phasor)
    complex = phasor(1) * exp(1i * phasor(2) * (pi / 180));
end
