tff(4,axiom,
    $ite(
      $let(c: $int,
        c:= 0,
        $true),
      $true,
      $false) ).

tff(5,axiom,
    $ite($true,
      $let(c: $int,
        c:= 0,
        $true),
      $false) ).

% tff(aaa,type,thing : $tType).
% tff(bbb,type,f : $o > thing).
% tff(eee,type,g : thing).
% tff(ccc,type,p : (thing * $o) > $o).
% tff(ddd,type,q : $o).
% tff(afs,axiom,p(f(q),! [X:$int] : (q => p(g,$true)) )).

% tff(ddd,type,r : $o > $o).
% tff(an,axiom,r($ite(q,r & f,r & g))).
%tff(aa,type,a: $i).
%tff(af,type,f: $i > $i).
%tff(ap,type,p: $i > $o).
