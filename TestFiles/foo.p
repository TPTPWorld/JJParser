    thf(q_type,type, q: $int > $o ).
    thf(ite,axiom,
        ! [X: $int,Y: $int] : ( q @ $ite($greater @ X @ Y,X,Y) ) ).
%    thf(q_type,type, q: $int > $o ).
%    thf(max_type,type, max: ( $int * $int ) > $int ).
%    thf(ite,axiom,
%        ! [X: $int,Y: $int] : ( q @ $ite($greater @ X @ Y,X,Y) ) ).
%    thf(max_defn,axiom,
%        ! [X: $int,Y: $int] :
%          ( max(X,Y) = $ite(($greatereq @ X @ Y),X,Y) ) ).
%    thf(ite_app,axiom,
%        ! [X: $int,Y: $int] : ( q @ (($ite) @ ($greater @ X @ Y) @ X @ Y) ) ).
%    thf(max_defn_app,axiom,
%        ! [X: $int,Y: $int] :
%          ( max(X,Y) = (($ite) @ ($greatereq @ X @ Y) @ X @ Y) ) ).
