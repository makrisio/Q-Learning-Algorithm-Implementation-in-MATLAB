function R=RewardMatrix25()

% immediate reward matrix; row and column = states; -Inf = not a possible
% move
    
     R=[-inf,    0, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
          0, -inf,    0, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf,    0, -inf,    0, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf,    0, -inf,    0, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
          0, -inf, -inf, -inf, -inf, -inf,  -50, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf,    0, -inf, -inf, -inf,    0, -inf,    0, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf,    0, -inf, -inf, -inf,  -50, -inf,    0, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf,    0, -inf, -inf, -inf,    0, -inf,    0, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf,  -50, -inf, -inf, -inf,    0, -inf,    0, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,    0, -inf,  -50, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,    0, -inf,    0, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,  -50, -inf,  -50, -inf, -inf, -inf,  100, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,    0, -inf,  -50, -inf, -inf, -inf,  -50, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,  -50, -inf, -inf, -inf,  -50, -inf,    0, -inf, -inf, -inf,    0, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf,    0;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,  -50, -inf, -inf, -inf, -inf, -inf,  100, -inf, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,  -50,  100,  -50, -inf, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,  -50, -inf, -inf, -inf,  100, -inf,    0, -inf;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,  -50, -inf, -inf, -inf,  -50, -inf,    0;
       -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf, -inf,    0, -inf, -inf, -inf,    0, -inf];
end
