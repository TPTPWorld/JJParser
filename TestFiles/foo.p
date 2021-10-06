tff(me_type,type,me: $i ).
tff(p2_type,type,p2: $i > $o ).
tff(q2_type,type,q2: $o > $o ).

tff(fool_2,axiom,q2((~p2(me)) != q2(me)) ).
