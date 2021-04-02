%           v1     v2  b  
system = [ 1+1.5i 2.5i 20 ;
           11 15 0 ];
solution = rref(system);

[angle, magnitude] = cart2pol(real(solution(1, 3)), imag(solution(1, 3)));

v1_ph = [magnitude, (180/pi) * angle];
