thf(p_type,type,p : $o).
thf(an,axiom,! [X: $int] : ((X = Y) | p)).

% tff(f_def,type,f: [$int] > [$int]).
% tff(p_def,type,p: [$int] > $o).
% tff(1,axiom,p(f([1]))).

% thf(f_def,type,f: [$int] > [$int]).
% thf(p_def,type,p: [$int] > $o).
% thf(1,axiom,p @ ( f @ [1])).

% tff(aaa,type,thing : $tType).
% tff(bbb,type,f : $o > thing).
% tff(eee,type,g : thing).
% tff(ccc,type,p : (thing * $o) > $o).
% tff(ddd,type,q : $o).
% tff(afs,axiom,p(f(? [Y: $int] : (( q & q) => q )),! [X:$int] : (q => p(g,$true)) )).

% tff(ddd,type,r : $o > $o).
% tff(an,axiom,r($ite(q,r & f,r & g))).
%tff(aa,type,a: $i).
%tff(af,type,f: $i > $i).
%tff(ap,type,p: $i > $o).
