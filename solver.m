% This code was written so it can solve system of
% equations with complex coefficients. 

% Written by Fernando Assad and Nathan Henry

% IMPORTANT: 
% the otput will always be in the phasor
% form (magnitude / angle). If you want to
% get the algebraic form, just type 
% S.v(number) in the command window. 

syms v1 v2 v3 v4 v5;
eqns = [
(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 == 0
(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 == 0
(1 + 1i)*v1 + (1 + 1i)*v2 + (1 + 1i)*v3 == 0
];

S = solve(eqns, [v1, v2, v3, v4, v5]);

[angle, magnitude] = cart2pol(real(S.v1), imag(S.v1));
v1_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v2), imag(S.v2));
v2_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v3), imag(S.v3));
v3_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v4), imag(S.v4));
v4_ph = [double(magnitude), double((180/pi) * angle)]

[angle, magnitude] = cart2pol(real(S.v5), imag(S.v5));
v5_ph = [double(magnitude), double((180/pi) * angle)]
