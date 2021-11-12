tff(a_type,type,a: $i).
tff(f_type,type,f: $i > $i).
tff(g_type,type,g: $i > $o).
tff(h_type,type,h: $o > $i).
tff(p_type,type,p: ($i * $o) > $o).
tff(q_type,type,q: ($o * $o) > $o).

tff(first_order,axiom,
    q(p(h(g(a)),$true),q($false,$false))).
