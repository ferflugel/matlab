% This code is aimed to help with operations 
% required by circuits problems

% Converting from polar to algebraic:
mag_a = 3; theta_a = 30; % note angle in degrees 
a = mag_a * exp(1i * theta_a * (pi / 180));

% Converting from algebraic to polar:
b = 1 + 1i;
mag_b = abs(b); theta_b = (180 / pi) * angle(b); % note angle in degrees

% Combining impedances in series:
Z1 = [2, 2i, -3i];
Z_series = series(Z1);

% Combining impedances in parallel:
Z2 = [3, 6, 2];
Z_parallel = parallel(Z2);


function Z_series = series(Z)
    Z_series = sum(Z, 'all');
end

function Z_parallel = parallel(Z)
    Z_parallel = (sum(Z.^-1, 'all'))^-1;
end
