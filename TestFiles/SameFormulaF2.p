% fof(c,conjecture,
%     ( ( ! [X31] :
%         ? [X32] : t
%      => ( t
%         & p(g(b,b)) ) )
%     | ~ ( ! [X31] :
%           ? [X32] : t
%        => ( t
%           & p(g(b,b)) ) )
%     | q(c) ),
%     file('Problems/PRV015+1.p',c) ).

fof(c,conjecture,(p | q) | r ).
