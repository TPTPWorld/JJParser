thf(il_type,type,(
    il: $int )).

thf(fll_type,type,(
    fll: $int > $int > $int > $int > $int )).

thf(pll_type,type,(
    pll: $int > $o )).

thf(let_tuple_2,axiom,
    $let(
      [ ff: $int > $int > $int,
        gg: $int > $int ],
      [ ff @ X @ Y := fll @ X @ X @ Y @ Y,
        gg @ Z := fll @ Z @ Z @ Z @ Z ],
      pll @ ( ff @ il @ ( gg @ il ) ) ) ).
