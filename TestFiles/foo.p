tff(people_type,type,people: $tType).
tff(me_type,type,me: people).
tff(f_type,type,f: $o > $int).
tff(g_type,type,g: $people > $int).

tff(an,axiom,
    ! [X: $o] :
      ( X = $greater(5,f($less(g(me),5))))).
