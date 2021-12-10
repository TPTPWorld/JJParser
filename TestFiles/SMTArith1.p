tff('Int_bool_fun$',type,(
    'Int_bool_fun$': $tType )).

tff('Int_set_int_set_int_set_fun_fun$',type,(
    'Int_set_int_set_int_set_fun_fun$': $tType )).

tff('Int_set$',type,(
    'Int_set$': $tType )).

tff('Int_int_fun$',type,(
    'Int_int_fun$': $tType )).

tff('Int_set_set$',type,(
    'Int_set_set$': $tType )).

tff('Int_set_int_fun$',type,(
    'Int_set_int_fun$': $tType )).

tff(tlbool,type,(
    tlbool: $tType )).

tff('Int_set_int_set_fun$',type,(
    'Int_set_int_set_fun$': $tType )).

tff('Int_int_set_fun$',type,(
    'Int_int_set_fun$': $tType )).

tff('Int_set_bool_fun$',type,(
    'Int_set_bool_fun$': $tType )).

tff('Int_int_int_fun_fun$',type,(
    'Int_int_int_fun_fun$': $tType )).

tff('Int_int_bool_fun_fun$',type,(
    'Int_int_bool_fun_fun$': $tType )).

tff('uua$',type,(
    'uua$': 'Int_int_bool_fun_fun$' )).

tff('bot$b',type,(
    'bot$b': 'Int_bool_fun$' )).

tff('insert$',type,(
    'insert$': $int > 'Int_set_int_set_fun$' )).

tff('fun_app$b',type,(
    'fun_app$b': ( 'Int_int_set_fun$' * $int ) > 'Int_set$' )).

tff('a$',type,(
    'a$': $int )).

tff('less_eq$',type,(
    'less_eq$': ( 'Int_set$' * 'Int_set$' ) > $o )).

tff('member$a',type,(
    'member$a': ( 'Int_set$' * 'Int_set_set$' ) > $o )).

tff('fun_app$d',type,(
    'fun_app$d': ( 'Int_set_bool_fun$' * 'Int_set$' ) > $o )).

tff('b$',type,(
    'b$': $int )).

tff('atLeastLessThan$',type,(
    'atLeastLessThan$': $int > 'Int_int_set_fun$' )).

tff('the_elem$',type,(
    'the_elem$': 'Int_set_int_fun$' )).

tff('fun_app$',type,(
    'fun_app$': ( 'Int_bool_fun$' * $int ) > $o )).

tff('atLeastAtMost$',type,(
    'atLeastAtMost$': $int > 'Int_int_set_fun$' )).

tff('fun_app$a',type,(
    'fun_app$a': ( 'Int_int_bool_fun_fun$' * $int ) > 'Int_bool_fun$' )).

tff('bot$',type,(
    'bot$': 'Int_set_set$' )).

tff('is_empty$',type,(
    'is_empty$': 'Int_set$' > $o )).

tff('fun_app$g',type,(
    'fun_app$g': ( 'Int_set_int_set_int_set_fun_fun$' * 'Int_set$' ) > 'Int_set_int_set_fun$' )).

tff('atLeastLessThan$a',type,(
    'atLeastLessThan$a': ( 'Int_set$' * 'Int_set$' ) > 'Int_set_set$' )).

tff(tltrue,type,(
    tltrue: tlbool )).

tff('fun_app$h',type,(
    'fun_app$h': ( 'Int_int_int_fun_fun$' * $int ) > 'Int_int_fun$' )).

tff('fun_app$c',type,(
    'fun_app$c': ( 'Int_set_int_set_fun$' * 'Int_set$' ) > 'Int_set$' )).

tff('less_eq$a',type,(
    'less_eq$a': ( 'Int_set_set$' * 'Int_set_set$' ) > $o )).

tff('fun_app$e',type,(
    'fun_app$e': ( 'Int_set_int_fun$' * 'Int_set$' ) > $int )).

tff('bot$a',type,(
    'bot$a': 'Int_set$' )).

tff('atLeastAtMost$a',type,(
    'atLeastAtMost$a': ( 'Int_set$' * 'Int_set$' ) > 'Int_set_set$' )).

tff('sup$',type,(
    'sup$': 'Int_set_int_set_int_set_fun_fun$' )).

tff('inf$',type,(
    'inf$': 'Int_set_int_set_int_set_fun_fun$' )).

tff('uu$',type,(
    'uu$': 'Int_set$' > 'Int_bool_fun$' )).

tff('less$a',type,(
    'less$a': ( 'Int_set_set$' * 'Int_set_set$' ) > $o )).

tff('remove$',type,(
    'remove$': $int > 'Int_set_int_set_fun$' )).

tff(tlfalse,type,(
    tlfalse: tlbool )).

tff('inf$a',type,(
    'inf$a': 'Int_int_int_fun_fun$' )).

tff('is_singleton$',type,(
    'is_singleton$': 'Int_set$' > $o )).

tff('fun_app$f',type,(
    'fun_app$f': ( 'Int_int_fun$' * $int ) > $int )).

tff('less$',type,(
    'less$': 'Int_set$' > 'Int_set_bool_fun$' )).

tff('minus$',type,(
    'minus$': 'Int_set_int_set_int_set_fun_fun$' )).

tff('member$',type,(
    'member$': ( $int * 'Int_set$' ) > $o )).

tff('collect$',type,(
    'collect$': 'Int_bool_fun$' > 'Int_set$' )).

tff('greaterThanLessThan$',type,(
    'greaterThanLessThan$': $int > 'Int_int_set_fun$' )).

tff('sup$a',type,(
    'sup$a': 'Int_int_int_fun_fun$' )).

tff(formula_1,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'fun_app$'('fun_app$a'('uua$',A__questionmark_v0),A__questionmark_v1)
    <=> $less(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_2,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int] :
      ( 'fun_app$'('uu$'(A__questionmark_v0),A__questionmark_v1)
    <=> 'member$'(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_3,axiom,(
    'fun_app$b'('atLeastAtMost$'('a$'),'b$') != 'fun_app$c'('insert$'('b$'),'fun_app$b'('atLeastLessThan$'('a$'),'b$')) )).

tff(formula_4,axiom,(
    $less('a$','b$') )).

tff(formula_5,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
       => A__questionmark_v0 = A__questionmark_v2 )
     => 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_6,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( A__questionmark_v0 = A__questionmark_v1
        | 'member$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_7,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)) = 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) )).

tff(formula_8,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_bool_fun$'] :
      ( ! [A__questionmark_v3: $int] :
          ( 'member$'(A__questionmark_v3,'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1))
         => 'fun_app$'(A__questionmark_v2,A__questionmark_v3) )
    <=> ( 'fun_app$'(A__questionmark_v2,A__questionmark_v0)
        & ! [A__questionmark_v3: $int] :
            ( 'member$'(A__questionmark_v3,A__questionmark_v1)
           => 'fun_app$'(A__questionmark_v2,A__questionmark_v3) ) ) ) )).

tff(formula_9,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2))
        & ( A__questionmark_v0 = A__questionmark_v1
         => $false )
        & ( 'member$'(A__questionmark_v0,A__questionmark_v2)
         => $false ) )
     => $false ) )).

tff(formula_10,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] : 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)) )).

tff(formula_11,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_12,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,A__questionmark_v1)
        & ! [A__questionmark_v2: 'Int_set$'] :
            ( ( A__questionmark_v1 = 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)
              & ~ 'member$'(A__questionmark_v0,A__questionmark_v2) )
           => $false ) )
     => $false ) )).

tff(formula_13,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'member$'(A__questionmark_v0,A__questionmark_v2) )
     => ( 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)
      <=> A__questionmark_v1 = A__questionmark_v2 ) ) )).

tff(formula_14,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) = A__questionmark_v1 ) )).

tff(formula_15,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int,A__questionmark_v3: 'Int_set$'] :
      ( ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'member$'(A__questionmark_v2,A__questionmark_v3) )
     => ( 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v3)
      <=> ( ( A__questionmark_v0 = A__questionmark_v2
           => A__questionmark_v1 = A__questionmark_v3 )
          & ( A__questionmark_v0 != A__questionmark_v2
           => ? [A__questionmark_v4: 'Int_set$'] :
                ( A__questionmark_v1 = 'fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v4)
                & ~ 'member$'(A__questionmark_v2,A__questionmark_v4)
                & A__questionmark_v3 = 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v4)
                & ~ 'member$'(A__questionmark_v0,A__questionmark_v4) ) ) ) ) ) )).

tff(formula_16,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('insert$'(A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_17,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,A__questionmark_v1)
     => ? [A__questionmark_v2: 'Int_set$'] :
          ( A__questionmark_v1 = 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)
          & ~ 'member$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_18,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v2,A__questionmark_v3) )
     => ( 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v2),A__questionmark_v3)
      <=> ( A__questionmark_v0 = A__questionmark_v2
          & A__questionmark_v1 = A__questionmark_v3 ) ) ) )).

tff(formula_19,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v2),A__questionmark_v3)
        & $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v2,A__questionmark_v3) )
     => A__questionmark_v0 = A__questionmark_v2 ) )).

tff(formula_20,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v2),A__questionmark_v3)
        & $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v2,A__questionmark_v3) )
     => A__questionmark_v1 = A__questionmark_v3 ) )).

tff(formula_21,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v2,A__questionmark_v1)
     => ( $less(A__questionmark_v0,A__questionmark_v2)
      <=> $false ) ) )).

tff(formula_22,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v2,A__questionmark_v1)
     => ( $less(A__questionmark_v2,A__questionmark_v0)
      <=> $true ) ) )).

tff(formula_23,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v2,A__questionmark_v1)
     => ( A__questionmark_v2 != A__questionmark_v0
      <=> $true ) ) )).

tff(formula_24,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v2,A__questionmark_v1)
     => ( A__questionmark_v2 = A__questionmark_v0
      <=> $false ) ) )).

tff(formula_25,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$',A__questionmark_v1: 'Int_bool_fun$',A__questionmark_v2: 'Int_bool_fun$',A__questionmark_v3: 'Int_bool_fun$'] :
      ( ( ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v5,A__questionmark_v4)
           => ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v1,A__questionmark_v5) ) )
        & ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v5,A__questionmark_v4)
           => ( 'fun_app$'(A__questionmark_v2,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) )
     => ? [A__questionmark_v4: $int] :
        ! [A__questionmark_v5: $int] :
          ( $less(A__questionmark_v5,A__questionmark_v4)
         => ( ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
              | 'fun_app$'(A__questionmark_v2,A__questionmark_v5) )
          <=> ( 'fun_app$'(A__questionmark_v1,A__questionmark_v5)
              | 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) ) ) )).

tff(formula_26,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$',A__questionmark_v1: 'Int_bool_fun$',A__questionmark_v2: 'Int_bool_fun$',A__questionmark_v3: 'Int_bool_fun$'] :
      ( ( ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v5,A__questionmark_v4)
           => ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v1,A__questionmark_v5) ) )
        & ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v5,A__questionmark_v4)
           => ( 'fun_app$'(A__questionmark_v2,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) )
     => ? [A__questionmark_v4: $int] :
        ! [A__questionmark_v5: $int] :
          ( $less(A__questionmark_v5,A__questionmark_v4)
         => ( ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
              & 'fun_app$'(A__questionmark_v2,A__questionmark_v5) )
          <=> ( 'fun_app$'(A__questionmark_v1,A__questionmark_v5)
              & 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) ) ) )).

tff(formula_27,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$',A__questionmark_v1: 'Int_bool_fun$',A__questionmark_v2: 'Int_bool_fun$',A__questionmark_v3: 'Int_bool_fun$'] :
      ( ( ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v1,A__questionmark_v5) ) )
        & ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => ( 'fun_app$'(A__questionmark_v2,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) )
     => ? [A__questionmark_v4: $int] :
        ! [A__questionmark_v5: $int] :
          ( $less(A__questionmark_v4,A__questionmark_v5)
         => ( ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
              & 'fun_app$'(A__questionmark_v2,A__questionmark_v5) )
          <=> ( 'fun_app$'(A__questionmark_v1,A__questionmark_v5)
              & 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) ) ) )).

tff(formula_28,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$',A__questionmark_v1: 'Int_bool_fun$',A__questionmark_v2: 'Int_bool_fun$',A__questionmark_v3: 'Int_bool_fun$'] :
      ( ( ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v1,A__questionmark_v5) ) )
        & ? [A__questionmark_v4: $int] :
          ! [A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => ( 'fun_app$'(A__questionmark_v2,A__questionmark_v5)
            <=> 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) )
     => ? [A__questionmark_v4: $int] :
        ! [A__questionmark_v5: $int] :
          ( $less(A__questionmark_v4,A__questionmark_v5)
         => ( ( 'fun_app$'(A__questionmark_v0,A__questionmark_v5)
              | 'fun_app$'(A__questionmark_v2,A__questionmark_v5) )
          <=> ( 'fun_app$'(A__questionmark_v1,A__questionmark_v5)
              | 'fun_app$'(A__questionmark_v3,A__questionmark_v5) ) ) ) ) )).

tff(formula_29,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v1,A__questionmark_v2)
     => ( A__questionmark_v2 = A__questionmark_v0
      <=> $false ) ) )).

tff(formula_30,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v1,A__questionmark_v2)
     => ( A__questionmark_v2 != A__questionmark_v0
      <=> $true ) ) )).

tff(formula_31,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v1,A__questionmark_v2)
     => ( $less(A__questionmark_v2,A__questionmark_v0)
      <=> $false ) ) )).

tff(formula_32,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v1,A__questionmark_v2)
     => ( $less(A__questionmark_v0,A__questionmark_v2)
      <=> $true ) ) )).

tff(formula_33,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => ( ~ 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0)
      <=> $true ) ) )).

tff(formula_34,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => ( ~ $less(A__questionmark_v1,A__questionmark_v0)
      <=> $true ) ) )).

tff(formula_35,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => ( A__questionmark_v1 = A__questionmark_v0
      <=> $false ) ) )).

tff(formula_36,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => ( A__questionmark_v1 = A__questionmark_v0
      <=> $false ) ) )).

tff(formula_37,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => ( A__questionmark_v0 = A__questionmark_v1
      <=> $false ) ) )).

tff(formula_38,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => ( A__questionmark_v0 = A__questionmark_v1
      <=> $false ) ) )).

tff(formula_39,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
      | A__questionmark_v0 = A__questionmark_v1
      | $less(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_40,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: tlbool] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => ( ( 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0)
         => A__questionmark_v2 = tltrue )
      <=> $true ) ) )).

tff(formula_41,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: tlbool] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => ( ( $less(A__questionmark_v1,A__questionmark_v0)
         => A__questionmark_v2 = tltrue )
      <=> $true ) ) )).

tff(formula_42,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => ~ 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0) ) )).

tff(formula_43,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => ~ $less(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_44,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v1)),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v4)),'fun_app$b'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_45,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_fun$',A__questionmark_v3: $int] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & $less('fun_app$e'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => $less('fun_app$e'(A__questionmark_v2,A__questionmark_v4),'fun_app$e'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$e'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_46,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v1)),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v4)),'fun_app$c'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_47,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_fun$',A__questionmark_v3: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less('fun_app$f'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => $less('fun_app$f'(A__questionmark_v2,A__questionmark_v4),'fun_app$f'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$f'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_48,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set_int_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( $less(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v2))
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => $less('fun_app$e'(A__questionmark_v1,A__questionmark_v4),'fun_app$e'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_49,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_int_set_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$b'(A__questionmark_v1,A__questionmark_v2))
        & $less(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v1,A__questionmark_v4)),'fun_app$b'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$b'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_50,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set_int_set_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'(A__questionmark_v1,A__questionmark_v2))
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v1,A__questionmark_v4)),'fun_app$c'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_51,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_int_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $less(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v2))
        & $less(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => $less('fun_app$f'(A__questionmark_v1,A__questionmark_v4),'fun_app$f'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_52,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : ~ 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v0) )).

tff(formula_53,axiom,(
    ! [A__questionmark_v0: $int] : ~ $less(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_54,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$b'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v4)),'fun_app$b'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_55,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_fun$',A__questionmark_v3: $int] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$e'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => $less('fun_app$e'(A__questionmark_v2,A__questionmark_v4),'fun_app$e'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$e'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_56,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$c'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v4)),'fun_app$c'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_57,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_fun$',A__questionmark_v3: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$f'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => $less('fun_app$f'(A__questionmark_v2,A__questionmark_v4),'fun_app$f'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$f'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_58,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_int_set_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( A__questionmark_v0 = 'fun_app$b'(A__questionmark_v1,A__questionmark_v2)
        & $less(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v1,A__questionmark_v4)),'fun_app$b'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$b'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_59,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set_int_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( A__questionmark_v0 = 'fun_app$e'(A__questionmark_v1,A__questionmark_v2)
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => $less('fun_app$e'(A__questionmark_v1,A__questionmark_v4),'fun_app$e'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_60,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set_int_set_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( A__questionmark_v0 = 'fun_app$c'(A__questionmark_v1,A__questionmark_v2)
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v1,A__questionmark_v4)),'fun_app$c'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_61,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_int_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( A__questionmark_v0 = 'fun_app$f'(A__questionmark_v1,A__questionmark_v2)
        & $less(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => $less('fun_app$f'(A__questionmark_v1,A__questionmark_v4),'fun_app$f'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_62,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] : $less(A__questionmark_v1,A__questionmark_v0) )).

tff(formula_63,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] : $less(A__questionmark_v0,A__questionmark_v1) )).

tff(formula_64,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_bool_fun$'] :
      ( 'member$'(A__questionmark_v0,'collect$'(A__questionmark_v1))
    <=> 'fun_app$'(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_65,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'collect$'('uu$'(A__questionmark_v0)) = A__questionmark_v0 )).

tff(formula_66,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => A__questionmark_v0 != A__questionmark_v1 ) )).

tff(formula_67,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => A__questionmark_v0 != A__questionmark_v1 ) )).

tff(formula_68,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0) )
     => $false ) )).

tff(formula_69,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v0) )
     => $false ) )).

tff(formula_70,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( A__questionmark_v0 = A__questionmark_v1
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_71,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( A__questionmark_v0 = A__questionmark_v1
        & $less(A__questionmark_v1,A__questionmark_v2) )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_72,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & A__questionmark_v1 = A__questionmark_v2 )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_73,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v1 = A__questionmark_v2 )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_74,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $less(A__questionmark_v0,A__questionmark_v1)
     => ( ~ $less(A__questionmark_v1,A__questionmark_v0)
      <=> A__questionmark_v1 = A__questionmark_v0 ) ) )).

tff(formula_75,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( ( $less(A__questionmark_v0,A__questionmark_v1)
         => $false )
        & ( A__questionmark_v0 = A__questionmark_v1
         => $false )
        & ( $less(A__questionmark_v1,A__questionmark_v0)
         => $false ) )
     => $false ) )).

tff(formula_76,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0) )
     => $false ) )).

tff(formula_77,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v0) )
     => $false ) )).

tff(formula_78,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : ~ 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v0) )).

tff(formula_79,axiom,(
    ! [A__questionmark_v0: $int] : ~ $less(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_80,axiom,(
    ! [A__questionmark_v0: 'Int_int_bool_fun_fun$',A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( ! [A__questionmark_v3: $int,A__questionmark_v4: $int] :
            ( $less(A__questionmark_v3,A__questionmark_v4)
           => 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4) )
        & ! [A__questionmark_v3: $int] : 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v3)
        & ! [A__questionmark_v3: $int,A__questionmark_v4: $int] :
            ( 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v4),A__questionmark_v3)
           => 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4) ) )
     => 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v1),A__questionmark_v2) ) )).

tff(formula_81,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_82,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v2) )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_83,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( $less(A__questionmark_v1,A__questionmark_v0)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_84,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v0) )
     => 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_85,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v2,A__questionmark_v0) )
     => $less(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_86,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => A__questionmark_v0 != A__questionmark_v1 ) )).

tff(formula_87,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => A__questionmark_v0 != A__questionmark_v1 ) )).

tff(formula_88,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => A__questionmark_v1 != A__questionmark_v0 ) )).

tff(formula_89,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => A__questionmark_v1 != A__questionmark_v0 ) )).

tff(formula_90,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( A__questionmark_v0 != A__questionmark_v1
        & ( $less(A__questionmark_v0,A__questionmark_v1)
         => $false )
        & ( $less(A__questionmark_v1,A__questionmark_v0)
         => $false ) )
     => $false ) )).

tff(formula_91,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0) )
     => $false ) )).

tff(formula_92,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v0) )
     => $false ) )).

tff(formula_93,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 != A__questionmark_v1
    <=> ( $less(A__questionmark_v0,A__questionmark_v1)
        | $less(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_94,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0) )
     => $false ) )).

tff(formula_95,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v0) )
     => $false ) )).

tff(formula_96,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_97,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v2) )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_98,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v0)
    <=> $false ) )).

tff(formula_99,axiom,(
    ! [A__questionmark_v0: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v0)
    <=> $false ) )).

tff(formula_100,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( A__questionmark_v0 != A__questionmark_v1
        & ( $less(A__questionmark_v0,A__questionmark_v1)
         => $false )
        & ( $less(A__questionmark_v1,A__questionmark_v0)
         => $false ) )
     => $false ) )).

tff(formula_101,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'bot$' = 'atLeastLessThan$a'(A__questionmark_v0,A__questionmark_v1)
    <=> ~ 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_102,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'bot$a' = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1)
    <=> ~ $less(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_103,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'atLeastLessThan$a'(A__questionmark_v0,A__questionmark_v1) = 'bot$'
    <=> ~ 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_104,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> ~ $less(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_105,axiom,(
    ! [A__questionmark_v0: $int] :
      ( 'member$'(A__questionmark_v0,'bot$a')
    <=> $false ) )).

tff(formula_106,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( ! [A__questionmark_v1: $int] : ~ 'member$'(A__questionmark_v1,A__questionmark_v0)
    <=> A__questionmark_v0 = 'bot$a' ) )).

tff(formula_107,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$'] :
      ( 'collect$'(A__questionmark_v0) = 'bot$a'
    <=> ! [A__questionmark_v1: $int] : ~ 'fun_app$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_108,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$'] :
      ( 'bot$a' = 'collect$'(A__questionmark_v0)
    <=> ! [A__questionmark_v1: $int] : ~ 'fun_app$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_109,axiom,(
    ! [A__questionmark_v0: $int] : 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v0),'bot$a')) )).

tff(formula_110,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'atLeastAtMost$a'(A__questionmark_v1,A__questionmark_v0) = 'bot$' ) )).

tff(formula_111,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$b'('atLeastAtMost$'(A__questionmark_v1),A__questionmark_v0) = 'bot$a' ) )).

tff(formula_112,axiom,(
    ! [A__questionmark_v0: $int] : 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v0) = 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a') )).

tff(formula_113,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('insert$'(A__questionmark_v2),'bot$a')
    <=> ( A__questionmark_v0 = A__questionmark_v1
        & A__questionmark_v1 = A__questionmark_v2 ) ) )).

tff(formula_114,axiom,(
    ! [A__questionmark_v0: $int] :
      ( 'member$'(A__questionmark_v0,'bot$a')
     => $false ) )).

tff(formula_115,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int] :
      ( A__questionmark_v0 = 'bot$a'
     => ~ 'member$'(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_116,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( ! [A__questionmark_v1: $int] :
          ( 'member$'(A__questionmark_v1,A__questionmark_v0)
         => $false )
     => A__questionmark_v0 = 'bot$a' ) )).

tff(formula_117,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( ? [A__questionmark_v1: $int] : 'member$'(A__questionmark_v1,A__questionmark_v0)
    <=> A__questionmark_v0 != 'bot$a' ) )).

tff(formula_118,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : ~ 'fun_app$d'('less$'(A__questionmark_v0),'bot$a') )).

tff(formula_119,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( A__questionmark_v0 != 'bot$a'
    <=> 'fun_app$d'('less$'('bot$a'),A__questionmark_v0) ) )).

tff(formula_120,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : ~ 'fun_app$d'('less$'(A__questionmark_v0),'bot$a') )).

tff(formula_121,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),'bot$a'))
     => A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_122,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),'bot$a'))
    <=> A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_123,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')) = 'fun_app$c'('insert$'(A__questionmark_v2),'fun_app$c'('insert$'(A__questionmark_v3),'bot$a'))
    <=> ( ( A__questionmark_v0 = A__questionmark_v2
          & A__questionmark_v1 = A__questionmark_v3 )
        | ( A__questionmark_v0 = A__questionmark_v3
          & A__questionmark_v1 = A__questionmark_v2 ) ) ) )).

tff(formula_124,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) != 'bot$a' )).

tff(formula_125,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a') = 'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')
     => A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_126,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 = A__questionmark_v1
     => 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a') ) )).

tff(formula_127,axiom,(
    ! [A__questionmark_v0: $int] : 'is_singleton$'('fun_app$c'('insert$'(A__questionmark_v0),'bot$a')) )).

tff(formula_128,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( 'is_empty$'(A__questionmark_v0)
    <=> A__questionmark_v0 = 'bot$a' ) )).

tff(formula_129,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( ( 'is_singleton$'(A__questionmark_v0)
        & ! [A__questionmark_v1: $int] :
            ( A__questionmark_v0 = 'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')
           => $false ) )
     => $false ) )).

tff(formula_130,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( 'is_singleton$'(A__questionmark_v0)
    <=> ? [A__questionmark_v1: $int] : A__questionmark_v0 = 'fun_app$c'('insert$'(A__questionmark_v1),'bot$a') ) )).

tff(formula_131,axiom,(
    ! [A__questionmark_v0: $int] : 'fun_app$e'('the_elem$','fun_app$c'('insert$'(A__questionmark_v0),'bot$a')) = A__questionmark_v0 )).

tff(formula_132,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('minus$','fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')) )).

tff(formula_133,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$c'('fun_app$g'('inf$','fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('atLeastAtMost$'(A__questionmark_v1),A__questionmark_v2)) = 'bot$a' )).

tff(formula_134,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'atLeastLessThan$a'(A__questionmark_v1,A__questionmark_v0) = 'bot$' ) )).

tff(formula_135,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$b'('atLeastLessThan$'(A__questionmark_v1),A__questionmark_v0) = 'bot$a' ) )).

tff(formula_136,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('insert$'(A__questionmark_v2),'bot$a')
    <=> ( A__questionmark_v0 = A__questionmark_v2
        & 'less_eq$'(A__questionmark_v1,'fun_app$c'('insert$'(A__questionmark_v2),'bot$a')) ) ) )).

tff(formula_137,axiom,(
    ! [A__questionmark_v0: $int] : $lesseq(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_138,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'less_eq$'(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_139,axiom,(
    ! [A__questionmark_v0: $int] : $lesseq(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_140,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'less_eq$'(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_141,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) )
     => A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_142,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ! [A__questionmark_v2: $int] :
          ( 'member$'(A__questionmark_v2,A__questionmark_v0)
         => 'member$'(A__questionmark_v2,A__questionmark_v1) )
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_143,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
    <=> ( 'member$'(A__questionmark_v0,A__questionmark_v1)
        & 'member$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_144,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,A__questionmark_v1)
        & 'member$'(A__questionmark_v0,A__questionmark_v2) )
     => 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_145,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_146,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2))
    <=> ( 'member$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'member$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_147,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'member$'(A__questionmark_v0,A__questionmark_v2) )
     => 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_148,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'less_eq$'('bot$a',A__questionmark_v0) )).

tff(formula_149,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'bot$a')
    <=> A__questionmark_v0 = 'bot$a' ) )).

tff(formula_150,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$a'(A__questionmark_v0,'atLeastAtMost$a'(A__questionmark_v1,A__questionmark_v2))
    <=> ( 'less_eq$'(A__questionmark_v1,A__questionmark_v0)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_151,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( 'member$'(A__questionmark_v0,'fun_app$b'('atLeastAtMost$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( $lesseq(A__questionmark_v1,A__questionmark_v0)
        & $lesseq(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_152,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( 'atLeastAtMost$a'(A__questionmark_v0,A__questionmark_v1) = 'atLeastAtMost$a'(A__questionmark_v2,A__questionmark_v3)
    <=> ( ( A__questionmark_v0 = A__questionmark_v2
          & A__questionmark_v1 = A__questionmark_v3 )
        | ( ~ 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
          & ~ 'less_eq$'(A__questionmark_v2,A__questionmark_v3) ) ) ) )).

tff(formula_153,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$b'('atLeastAtMost$'(A__questionmark_v2),A__questionmark_v3)
    <=> ( ( A__questionmark_v0 = A__questionmark_v2
          & A__questionmark_v1 = A__questionmark_v3 )
        | ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
          & ~ $lesseq(A__questionmark_v2,A__questionmark_v3) ) ) ) )).

tff(formula_154,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'('fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1),A__questionmark_v2)
    <=> ( 'member$'(A__questionmark_v0,A__questionmark_v2)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_155,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_156,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)) = 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_157,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2) ) )).

tff(formula_158,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)) = 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_159,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)),A__questionmark_v1) = 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_160,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_161,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v0) = 'bot$a' )).

tff(formula_162,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$','bot$a'),A__questionmark_v0) = 'bot$a' )).

tff(formula_163,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'bot$a') = A__questionmark_v0 )).

tff(formula_164,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_165,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2) ) )).

tff(formula_166,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_167,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( 'less_eq$a'('atLeastAtMost$a'(A__questionmark_v0,A__questionmark_v1),'atLeastAtMost$a'(A__questionmark_v2,A__questionmark_v3))
    <=> ( ~ 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        | ( 'less_eq$'(A__questionmark_v2,A__questionmark_v0)
          & 'less_eq$'(A__questionmark_v1,A__questionmark_v3) ) ) ) )).

tff(formula_168,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( 'less_eq$'('fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1),'fun_app$b'('atLeastAtMost$'(A__questionmark_v2),A__questionmark_v3))
    <=> ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
        | ( $lesseq(A__questionmark_v2,A__questionmark_v0)
          & $lesseq(A__questionmark_v1,A__questionmark_v3) ) ) ) )).

tff(formula_169,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'atLeastAtMost$a'(A__questionmark_v0,A__questionmark_v1) = 'bot$'
    <=> ~ 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_170,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> ~ $lesseq(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_171,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'bot$' = 'atLeastAtMost$a'(A__questionmark_v0,A__questionmark_v1)
    <=> ~ 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_172,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( 'bot$a' = 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1)
    <=> ~ $lesseq(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_173,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a') = 'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)
    <=> ( A__questionmark_v1 = A__questionmark_v0
        & 'less_eq$'(A__questionmark_v2,'fun_app$c'('insert$'(A__questionmark_v0),'bot$a')) ) ) )).

tff(formula_174,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'bot$a' = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( ~ 'member$'(A__questionmark_v1,A__questionmark_v0)
        & 'bot$a' = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2) ) ) )).

tff(formula_175,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) = 'bot$a'
    <=> ( ~ 'member$'(A__questionmark_v1,A__questionmark_v0)
        & 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2) = 'bot$a' ) ) )).

tff(formula_176,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'bot$a' = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2)
    <=> ( ~ 'member$'(A__questionmark_v0,A__questionmark_v2)
        & 'bot$a' = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2) ) ) )).

tff(formula_177,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'bot$a'
    <=> ( ~ 'member$'(A__questionmark_v0,A__questionmark_v2)
        & 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2) = 'bot$a' ) ) )).

tff(formula_178,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_179,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$a'(A__questionmark_v0,'atLeastLessThan$a'(A__questionmark_v1,A__questionmark_v2))
    <=> ( 'less_eq$'(A__questionmark_v1,A__questionmark_v0)
        & 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) ) )).

tff(formula_180,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( 'member$'(A__questionmark_v0,'fun_app$b'('atLeastLessThan$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( $lesseq(A__questionmark_v1,A__questionmark_v0)
        & $less(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_181,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v0),'bot$a'))) = 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) )).

tff(formula_182,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( 'less_eq$'('fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1),'fun_app$b'('atLeastLessThan$'(A__questionmark_v2),A__questionmark_v3))
    <=> ( $lesseq(A__questionmark_v1,A__questionmark_v0)
        | ( $lesseq(A__questionmark_v2,A__questionmark_v0)
          & $lesseq(A__questionmark_v1,A__questionmark_v3) ) ) ) )).

tff(formula_183,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v0)) = 'bot$a' )).

tff(formula_184,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('minus$','fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v2)),'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1)) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v1),A__questionmark_v2) ) )).

tff(formula_185,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
     => 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_186,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1)) = 'bot$a' )).

tff(formula_187,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 = A__questionmark_v1
      | ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
      | ~ $lesseq(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_188,axiom,(
    ! [A__questionmark_v0: $int] : $lesseq(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_189,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'less_eq$'(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_190,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( 'less_eq$'('fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1),'fun_app$b'('atLeastLessThan$'(A__questionmark_v2),A__questionmark_v3))
     => ( $lesseq(A__questionmark_v1,A__questionmark_v0)
        | ( $lesseq(A__questionmark_v2,A__questionmark_v0)
          & $lesseq(A__questionmark_v1,A__questionmark_v3) ) ) ) )).

tff(formula_191,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'member$'(A__questionmark_v2,A__questionmark_v0) )
     => 'member$'(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_192,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
            & ~ 'less_eq$'(A__questionmark_v1,A__questionmark_v0) )
         => $false ) )
     => $false ) )).

tff(formula_193,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_194,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_195,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => ? [A__questionmark_v2: $int] : 'member$'(A__questionmark_v2,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v0)) ) )).

tff(formula_196,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_197,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_198,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_199,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_200,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_201,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_202,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_203,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_bool_fun$',A__questionmark_v3: 'Int_bool_fun$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & ! [A__questionmark_v4: $int] :
            ( ( 'member$'(A__questionmark_v4,A__questionmark_v0)
              & 'fun_app$'(A__questionmark_v2,A__questionmark_v4) )
           => 'fun_app$'(A__questionmark_v3,A__questionmark_v4) ) )
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'collect$'(A__questionmark_v2)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'collect$'(A__questionmark_v3))) ) )).

tff(formula_204,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_205,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$',A__questionmark_v1: 'Int_bool_fun$'] :
      ( 'less_eq$'('collect$'(A__questionmark_v0),'collect$'(A__questionmark_v1))
    <=> ! [A__questionmark_v2: $int] :
          ( 'fun_app$'(A__questionmark_v0,A__questionmark_v2)
         => 'fun_app$'(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_206,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_207,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = A__questionmark_v1
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_208,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_209,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_210,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_211,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$',A__questionmark_v1: 'Int_bool_fun$'] :
      ( ! [A__questionmark_v2: $int] :
          ( 'fun_app$'(A__questionmark_v0,A__questionmark_v2)
         => 'fun_app$'(A__questionmark_v1,A__questionmark_v2) )
     => 'less_eq$'('collect$'(A__questionmark_v0),'collect$'(A__questionmark_v1)) ) )).

tff(formula_212,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'less_eq$'(A__questionmark_v0,A__questionmark_v0) )).

tff(formula_213,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v2),A__questionmark_v0)) = A__questionmark_v0 ) )).

tff(formula_214,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) )).

tff(formula_215,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_216,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_217,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_218,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> ! [A__questionmark_v2: $int] :
          ( 'member$'(A__questionmark_v2,A__questionmark_v0)
         => 'member$'(A__questionmark_v2,A__questionmark_v1) ) ) )).

tff(formula_219,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = A__questionmark_v1
     => 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_220,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = A__questionmark_v1
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_221,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v1) )).

tff(formula_222,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_223,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_224,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> ! [A__questionmark_v2: $int] :
          ( 'member$'(A__questionmark_v2,A__questionmark_v0)
         => 'member$'(A__questionmark_v2,A__questionmark_v1) ) ) )).

tff(formula_225,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( A__questionmark_v0 = A__questionmark_v1
        & ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
            & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) )
         => $false ) )
     => $false ) )).

tff(formula_226,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_227,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3) )
     => 'less_eq$'('fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v3),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_228,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v1)) = 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) )).

tff(formula_229,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3) )
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v3)) ) )).

tff(formula_230,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_231,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'member$'(A__questionmark_v2,A__questionmark_v0) )
     => 'member$'(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_232,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'member$'(A__questionmark_v2,A__questionmark_v0) )
     => 'member$'(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_233,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2))
        & 'member$'(A__questionmark_v0,A__questionmark_v2) )
     => $false ) )).

tff(formula_234,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2))
     => 'member$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_235,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
     => 'member$'(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_236,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
     => 'member$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_237,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2))
        & ( ( 'member$'(A__questionmark_v0,A__questionmark_v1)
            & ~ 'member$'(A__questionmark_v0,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_238,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
        & ( ( 'member$'(A__questionmark_v0,A__questionmark_v1)
            & 'member$'(A__questionmark_v0,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_239,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int,A__questionmark_v3: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v3)))
    <=> ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v3))
        & ~ 'member$'(A__questionmark_v2,A__questionmark_v0) ) ) )).

tff(formula_240,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => ( $lesseq(A__questionmark_v1,A__questionmark_v0)
      <=> A__questionmark_v1 = A__questionmark_v0 ) ) )).

tff(formula_241,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => ( 'less_eq$'(A__questionmark_v1,A__questionmark_v0)
      <=> A__questionmark_v1 = A__questionmark_v0 ) ) )).

tff(formula_242,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
         => $false )
        & ( $lesseq(A__questionmark_v1,A__questionmark_v0)
         => $false ) )
     => $false ) )).

tff(formula_243,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_fun$',A__questionmark_v3: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$f'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$f'(A__questionmark_v2,A__questionmark_v4),'fun_app$f'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $lesseq('fun_app$f'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_244,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$b'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$b'(A__questionmark_v2,A__questionmark_v4),'fun_app$b'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'less_eq$'('fun_app$b'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_245,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_fun$',A__questionmark_v3: $int] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$e'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$e'(A__questionmark_v2,A__questionmark_v4),'fun_app$e'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $lesseq('fun_app$e'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_246,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$c'(A__questionmark_v2,A__questionmark_v1) = A__questionmark_v3
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$c'(A__questionmark_v2,A__questionmark_v4),'fun_app$c'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'less_eq$'('fun_app$c'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_247,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_int_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( A__questionmark_v0 = 'fun_app$f'(A__questionmark_v1,A__questionmark_v2)
        & $lesseq(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$f'(A__questionmark_v1,A__questionmark_v4),'fun_app$f'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $lesseq(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_248,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_int_set_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( A__questionmark_v0 = 'fun_app$b'(A__questionmark_v1,A__questionmark_v2)
        & $lesseq(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$b'(A__questionmark_v1,A__questionmark_v4),'fun_app$b'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$b'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_249,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set_int_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( A__questionmark_v0 = 'fun_app$e'(A__questionmark_v1,A__questionmark_v2)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$e'(A__questionmark_v1,A__questionmark_v4),'fun_app$e'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $lesseq(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_250,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set_int_set_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( A__questionmark_v0 = 'fun_app$c'(A__questionmark_v1,A__questionmark_v2)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$c'(A__questionmark_v1,A__questionmark_v4),'fun_app$c'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_251,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
      | $lesseq(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_252,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 = A__questionmark_v1
     => $lesseq(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_253,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = A__questionmark_v1
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_254,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_fun$',A__questionmark_v3: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq('fun_app$f'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$f'(A__questionmark_v2,A__questionmark_v4),'fun_app$f'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $lesseq('fun_app$f'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_255,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'('fun_app$b'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$b'(A__questionmark_v2,A__questionmark_v4),'fun_app$b'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'less_eq$'('fun_app$b'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_256,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_fun$',A__questionmark_v3: $int] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & $lesseq('fun_app$e'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$e'(A__questionmark_v2,A__questionmark_v4),'fun_app$e'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $lesseq('fun_app$e'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_257,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'('fun_app$c'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$c'(A__questionmark_v2,A__questionmark_v4),'fun_app$c'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'less_eq$'('fun_app$c'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_258,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_int_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $lesseq(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v2))
        & $lesseq(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$f'(A__questionmark_v1,A__questionmark_v4),'fun_app$f'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $lesseq(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_259,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set_int_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( $lesseq(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v2))
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$e'(A__questionmark_v1,A__questionmark_v4),'fun_app$e'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $lesseq(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_260,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_int_set_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( 'less_eq$'(A__questionmark_v0,'fun_app$b'(A__questionmark_v1,A__questionmark_v2))
        & $lesseq(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$b'(A__questionmark_v1,A__questionmark_v4),'fun_app$b'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$b'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_261,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set_int_set_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,'fun_app$c'(A__questionmark_v1,A__questionmark_v2))
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$c'(A__questionmark_v1,A__questionmark_v4),'fun_app$c'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_262,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 = A__questionmark_v1
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_263,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = A__questionmark_v1
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_264,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v0) )
     => A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_265,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) )
     => A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_266,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v2,A__questionmark_v0) )
     => $lesseq(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_267,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v0) )
     => 'less_eq$'(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_268,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v0) )
     => A__questionmark_v1 = A__questionmark_v0 ) )).

tff(formula_269,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) )
     => A__questionmark_v1 = A__questionmark_v0 ) )).

tff(formula_270,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 = A__questionmark_v1
    <=> ( $lesseq(A__questionmark_v1,A__questionmark_v0)
        & $lesseq(A__questionmark_v0,A__questionmark_v1) ) ) )).

tff(formula_271,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = A__questionmark_v1
    <=> ( 'less_eq$'(A__questionmark_v1,A__questionmark_v0)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) ) )).

tff(formula_272,axiom,(
    ! [A__questionmark_v0: 'Int_int_bool_fun_fun$',A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( ! [A__questionmark_v3: $int,A__questionmark_v4: $int] :
            ( $lesseq(A__questionmark_v3,A__questionmark_v4)
           => 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4) )
        & ! [A__questionmark_v3: $int,A__questionmark_v4: $int] :
            ( 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v4),A__questionmark_v3)
           => 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4) ) )
     => 'fun_app$'('fun_app$a'(A__questionmark_v0,A__questionmark_v1),A__questionmark_v2) ) )).

tff(formula_273,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => $lesseq(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_274,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_275,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => $lesseq(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_276,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_277,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v0) )
     => A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_278,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) )
     => A__questionmark_v0 = A__questionmark_v1 ) )).

tff(formula_279,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v1 = A__questionmark_v2 )
     => $lesseq(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_280,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v1 = A__questionmark_v2 )
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_281,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( A__questionmark_v0 = A__questionmark_v1
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => $lesseq(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_282,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( A__questionmark_v0 = A__questionmark_v1
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_283,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 = A__questionmark_v1
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_284,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = A__questionmark_v1
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_285,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
            & $lesseq(A__questionmark_v1,A__questionmark_v2) )
         => $false )
        & ( ( $lesseq(A__questionmark_v1,A__questionmark_v0)
            & $lesseq(A__questionmark_v0,A__questionmark_v2) )
         => $false )
        & ( ( $lesseq(A__questionmark_v0,A__questionmark_v2)
            & $lesseq(A__questionmark_v2,A__questionmark_v1) )
         => $false )
        & ( ( $lesseq(A__questionmark_v2,A__questionmark_v1)
            & $lesseq(A__questionmark_v1,A__questionmark_v0) )
         => $false )
        & ( ( $lesseq(A__questionmark_v1,A__questionmark_v2)
            & $lesseq(A__questionmark_v2,A__questionmark_v0) )
         => $false )
        & ( ( $lesseq(A__questionmark_v2,A__questionmark_v0)
            & $lesseq(A__questionmark_v0,A__questionmark_v1) )
         => $false ) )
     => $false ) )).

tff(formula_286,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> ( $lesseq(A__questionmark_v1,A__questionmark_v0)
        & A__questionmark_v1 != A__questionmark_v0 ) ) )).

tff(formula_287,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( ( 'member$'(A__questionmark_v1,A__questionmark_v2)
         => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) )
        & ( ~ 'member$'(A__questionmark_v1,A__questionmark_v2)
         => ( ( 'member$'(A__questionmark_v1,A__questionmark_v0)
             => 'fun_app$d'('less$'('fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a'))),A__questionmark_v2) )
            & ( ~ 'member$'(A__questionmark_v1,A__questionmark_v0)
             => 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) ) ) ) ) )).

tff(formula_288,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'('fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')),A__questionmark_v2)
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_289,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( ( 'member$'(A__questionmark_v1,A__questionmark_v0)
         => 'less_eq$'('fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')),A__questionmark_v2) )
        & ( ~ 'member$'(A__questionmark_v1,A__questionmark_v0)
         => 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) ) ) )).

tff(formula_290,axiom,(
    'bot$a' = 'collect$'('bot$b') )).

tff(formula_291,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => ~ 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v0) ) )).

tff(formula_292,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => ~ $less(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_293,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $less(A__questionmark_v0,A__questionmark_v1)
     => $lesseq(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_294,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ~ 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( ~ 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_295,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_296,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ~ 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
      <=> A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_297,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $less(A__questionmark_v0,A__questionmark_v1)
     => ( $lesseq(A__questionmark_v0,A__questionmark_v1)
      <=> A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_298,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => ( ~ 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
      <=> A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_299,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => ( ~ $less(A__questionmark_v0,A__questionmark_v1)
      <=> A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_300,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_301,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & ~ $lesseq(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_302,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
     => $less(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_303,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_304,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> ( $less(A__questionmark_v0,A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_305,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_306,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_307,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_308,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v2) )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_309,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_310,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_311,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_312,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & ~ $lesseq(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_313,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        | A__questionmark_v1 = A__questionmark_v0 ) ) )).

tff(formula_314,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> ( $less(A__questionmark_v0,A__questionmark_v1)
        | A__questionmark_v1 = A__questionmark_v0 ) ) )).

tff(formula_315,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v1 != A__questionmark_v0 ) ) )).

tff(formula_316,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v1 != A__questionmark_v0 ) ) )).

tff(formula_317,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v0) )
     => 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_318,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v2,A__questionmark_v0) )
     => $less(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_319,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v0) )
     => 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_320,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v2,A__questionmark_v0) )
     => $less(A__questionmark_v2,A__questionmark_v1) ) )).

tff(formula_321,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & ~ 'less_eq$'(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_322,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & ~ $lesseq(A__questionmark_v1,A__questionmark_v0) ) ) )).

tff(formula_323,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_324,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $lesseq(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_325,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_326,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $lesseq(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_327,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_328,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> ( $less(A__questionmark_v0,A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_329,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_330,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_331,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> $less(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_332,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $less(A__questionmark_v0,A__questionmark_v1)
    <=> $lesseq(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_333,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_334,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $lesseq(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_335,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_336,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 )
     => $less(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_337,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( A__questionmark_v0 != A__questionmark_v1
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v1) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_338,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( A__questionmark_v0 != A__questionmark_v1
        & $lesseq(A__questionmark_v0,A__questionmark_v1) )
     => $less(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_339,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_340,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v2) )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_341,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_342,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => $less(A__questionmark_v0,A__questionmark_v2) ) )).

tff(formula_343,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set_int_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( $lesseq(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v2))
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => $less('fun_app$e'(A__questionmark_v1,A__questionmark_v4),'fun_app$e'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_344,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_int_set_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( 'less_eq$'(A__questionmark_v0,'fun_app$b'(A__questionmark_v1,A__questionmark_v2))
        & $less(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v1,A__questionmark_v4)),'fun_app$b'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$b'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_345,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set_int_set_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,'fun_app$c'(A__questionmark_v1,A__questionmark_v2))
        & 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v1,A__questionmark_v4)),'fun_app$c'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_346,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_int_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $lesseq(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v2))
        & $less(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => $less('fun_app$f'(A__questionmark_v1,A__questionmark_v4),'fun_app$f'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_347,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_fun$',A__questionmark_v3: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $less('fun_app$f'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$f'(A__questionmark_v2,A__questionmark_v4),'fun_app$f'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$f'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_348,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v1)),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$b'(A__questionmark_v2,A__questionmark_v4),'fun_app$b'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_349,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_fun$',A__questionmark_v3: $int] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & $less('fun_app$e'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$e'(A__questionmark_v2,A__questionmark_v4),'fun_app$e'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$e'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_350,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v1)),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$c'(A__questionmark_v2,A__questionmark_v4),'fun_app$c'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_351,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_int_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $less(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v2))
        & $lesseq(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$f'(A__questionmark_v1,A__questionmark_v4),'fun_app$f'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$f'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_352,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_int_set_fun$',A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$b'(A__questionmark_v1,A__questionmark_v2))
        & $lesseq(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $lesseq(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$b'(A__questionmark_v1,A__questionmark_v4),'fun_app$b'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$b'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_353,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set_int_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( $less(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v2))
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => $lesseq('fun_app$e'(A__questionmark_v1,A__questionmark_v4),'fun_app$e'(A__questionmark_v1,A__questionmark_v5)) ) )
     => $less(A__questionmark_v0,'fun_app$e'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_354,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set_int_set_fun$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'(A__questionmark_v1,A__questionmark_v2))
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'less_eq$'(A__questionmark_v4,A__questionmark_v5)
           => 'less_eq$'('fun_app$c'(A__questionmark_v1,A__questionmark_v4),'fun_app$c'(A__questionmark_v1,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'(A__questionmark_v1,A__questionmark_v3)) ) )).

tff(formula_355,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_fun$',A__questionmark_v3: $int] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & $lesseq('fun_app$e'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => $less('fun_app$e'(A__questionmark_v2,A__questionmark_v4),'fun_app$e'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$e'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_356,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'('fun_app$b'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v4)),'fun_app$b'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$b'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_357,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set_int_set_fun$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        & 'less_eq$'('fun_app$c'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( 'fun_app$d'('less$'(A__questionmark_v4),A__questionmark_v5)
           => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v4)),'fun_app$c'(A__questionmark_v2,A__questionmark_v5)) ) )
     => 'fun_app$d'('less$'('fun_app$c'(A__questionmark_v2,A__questionmark_v0)),A__questionmark_v3) ) )).

tff(formula_358,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_int_fun$',A__questionmark_v3: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $lesseq('fun_app$f'(A__questionmark_v2,A__questionmark_v1),A__questionmark_v3)
        & ! [A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( $less(A__questionmark_v4,A__questionmark_v5)
           => $less('fun_app$f'(A__questionmark_v2,A__questionmark_v4),'fun_app$f'(A__questionmark_v2,A__questionmark_v5)) ) )
     => $less('fun_app$f'(A__questionmark_v2,A__questionmark_v0),A__questionmark_v3) ) )).

tff(formula_359,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
      | $less(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_360,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_361,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => ( $less(A__questionmark_v0,A__questionmark_v1)
        | A__questionmark_v0 = A__questionmark_v1 ) ) )).

tff(formula_362,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v2,A__questionmark_v1)
     => ( $lesseq(A__questionmark_v0,A__questionmark_v2)
      <=> $false ) ) )).

tff(formula_363,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v2,A__questionmark_v1)
     => ( $lesseq(A__questionmark_v2,A__questionmark_v0)
      <=> $true ) ) )).

tff(formula_364,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v1,A__questionmark_v2)
     => ( $lesseq(A__questionmark_v0,A__questionmark_v2)
      <=> $true ) ) )).

tff(formula_365,axiom,(
    ! [A__questionmark_v0: $int] :
    ? [A__questionmark_v1: $int] :
    ! [A__questionmark_v2: $int] :
      ( $less(A__questionmark_v1,A__questionmark_v2)
     => ( $lesseq(A__questionmark_v2,A__questionmark_v0)
      <=> $false ) ) )).

tff(formula_366,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> $less(A__questionmark_v1,A__questionmark_v0) ) )).

tff(formula_367,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_bool_fun$'] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & 'fun_app$'(A__questionmark_v2,A__questionmark_v0)
        & ~ 'fun_app$'(A__questionmark_v2,A__questionmark_v1) )
     => ? [A__questionmark_v3: $int] :
          ( $lesseq(A__questionmark_v0,A__questionmark_v3)
          & $lesseq(A__questionmark_v3,A__questionmark_v1)
          & ! [A__questionmark_v4: $int] :
              ( ( $lesseq(A__questionmark_v0,A__questionmark_v4)
                & $less(A__questionmark_v4,A__questionmark_v3) )
             => 'fun_app$'(A__questionmark_v2,A__questionmark_v4) )
          & ! [A__questionmark_v4: $int] :
              ( ! [A__questionmark_v5: $int] :
                  ( ( $lesseq(A__questionmark_v0,A__questionmark_v5)
                    & $less(A__questionmark_v5,A__questionmark_v4) )
                 => 'fun_app$'(A__questionmark_v2,A__questionmark_v5) )
             => $lesseq(A__questionmark_v4,A__questionmark_v3) ) ) ) )).

tff(formula_368,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> ! [A__questionmark_v2: $int] :
          ( 'member$'(A__questionmark_v2,A__questionmark_v0)
         => ! [A__questionmark_v3: $int] :
              ( 'member$'(A__questionmark_v3,A__questionmark_v1)
             => A__questionmark_v2 != A__questionmark_v3 ) ) ) )).

tff(formula_369,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'bot$a') = 'bot$a' )).

tff(formula_370,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','bot$a'),A__questionmark_v0) = 'bot$a' )).

tff(formula_371,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> ! [A__questionmark_v2: $int] :
          ( 'member$'(A__questionmark_v2,A__questionmark_v0)
         => ~ 'member$'(A__questionmark_v2,A__questionmark_v1) ) ) )).

tff(formula_372,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ! [A__questionmark_v2: $int] :
          ( ( 'member$'(A__questionmark_v2,A__questionmark_v0)
            & 'member$'(A__questionmark_v2,A__questionmark_v1) )
         => $false )
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'bot$a' ) )).

tff(formula_373,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'bot$a')
     => A__questionmark_v0 = 'bot$a' ) )).

tff(formula_374,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'bot$a')
    <=> A__questionmark_v0 = 'bot$a' ) )).

tff(formula_375,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'less_eq$'('bot$a',A__questionmark_v0) )).

tff(formula_376,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v1,A__questionmark_v0)
       => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('insert$'(A__questionmark_v1),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )
      & ( ~ 'member$'(A__questionmark_v1,A__questionmark_v0)
       => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2) ) ) )).

tff(formula_377,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,A__questionmark_v2)
       => 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )
      & ( ~ 'member$'(A__questionmark_v0,A__questionmark_v2)
       => 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2) ) ) )).

tff(formula_378,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,A__questionmark_v2)
       => 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2) )
      & ( ~ 'member$'(A__questionmark_v0,A__questionmark_v2)
       => 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v2)) ) ) )).

tff(formula_379,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_380,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int] : 'less_eq$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v0)) )).

tff(formula_381,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
     => ( 'less_eq$'(A__questionmark_v1,'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2))
      <=> 'less_eq$'(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_382,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'less_eq$'('fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_383,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( 'less_eq$a'('atLeastAtMost$a'(A__questionmark_v0,A__questionmark_v1),'atLeastLessThan$a'(A__questionmark_v2,A__questionmark_v3))
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
       => ( 'less_eq$'(A__questionmark_v2,A__questionmark_v0)
          & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v3) ) ) ) )).

tff(formula_384,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( 'less_eq$'('fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1),'fun_app$b'('atLeastLessThan$'(A__questionmark_v2),A__questionmark_v3))
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
       => ( $lesseq(A__questionmark_v2,A__questionmark_v0)
          & $less(A__questionmark_v1,A__questionmark_v3) ) ) ) )).

tff(formula_385,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( 'is_singleton$'(A__questionmark_v0)
    <=> A__questionmark_v0 = 'fun_app$c'('insert$'('fun_app$e'('the_elem$',A__questionmark_v0)),'bot$a') ) )).

tff(formula_386,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')) )).

tff(formula_387,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v0),'bot$a'))) = A__questionmark_v1 ) )).

tff(formula_388,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a'))),A__questionmark_v2) )).

tff(formula_389,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] :
      ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('minus$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('insert$'(A__questionmark_v0),'bot$a')) = A__questionmark_v1 ) )).

tff(formula_390,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( 'less$a'('atLeastAtMost$a'(A__questionmark_v0,A__questionmark_v1),'atLeastAtMost$a'(A__questionmark_v2,A__questionmark_v3))
    <=> ( ( ~ 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
          | ( 'less_eq$'(A__questionmark_v2,A__questionmark_v0)
            & 'less_eq$'(A__questionmark_v1,A__questionmark_v3)
            & ( 'fun_app$d'('less$'(A__questionmark_v2),A__questionmark_v0)
              | 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v3) ) ) )
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3) ) ) )).

tff(formula_391,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( 'fun_app$d'('less$'('fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('atLeastAtMost$'(A__questionmark_v2),A__questionmark_v3))
    <=> ( ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
          | ( $lesseq(A__questionmark_v2,A__questionmark_v0)
            & $lesseq(A__questionmark_v1,A__questionmark_v3)
            & ( $less(A__questionmark_v2,A__questionmark_v0)
              | $less(A__questionmark_v1,A__questionmark_v3) ) ) )
        & $lesseq(A__questionmark_v2,A__questionmark_v3) ) ) )).

tff(formula_392,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int] :
      ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),'bot$a'))
     => ( A__questionmark_v0 = 'bot$a'
        | A__questionmark_v0 = 'fun_app$c'('insert$'(A__questionmark_v1),'bot$a') ) ) )).

tff(formula_393,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int] :
      ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('insert$'(A__questionmark_v1),'bot$a'))
    <=> ( A__questionmark_v0 = 'bot$a'
        | A__questionmark_v0 = 'fun_app$c'('insert$'(A__questionmark_v1),'bot$a') ) ) )).

tff(formula_394,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$c'('fun_app$g'('inf$','fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('atLeastLessThan$'(A__questionmark_v1),A__questionmark_v2)) = 'bot$a' )).

tff(formula_395,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( ( A__questionmark_v0 != 'bot$a'
        & ! [A__questionmark_v1: $int,A__questionmark_v2: $int] :
            ( ( 'member$'(A__questionmark_v1,A__questionmark_v0)
              & 'member$'(A__questionmark_v2,A__questionmark_v0) )
           => A__questionmark_v1 = A__questionmark_v2 ) )
     => 'is_singleton$'(A__questionmark_v0) ) )).

tff(formula_396,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ~ 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'atLeastAtMost$a'(A__questionmark_v0,A__questionmark_v1) = 'bot$' ) )).

tff(formula_397,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ~ $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1) = 'bot$a' ) )).

tff(formula_398,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'bot$a') = 'bot$a' )).

tff(formula_399,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','bot$a'),A__questionmark_v0) = 'bot$a' )).

tff(formula_400,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'bot$a') = 'bot$a' )).

tff(formula_401,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','bot$a'),A__questionmark_v0) = 'bot$a' )).

tff(formula_402,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2))
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_403,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_404,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2))
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_405,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_406,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_407,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_408,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_409,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_410,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_411,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_412,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_413,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_414,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_415,axiom,(
    ! [A__questionmark_v0: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_416,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_417,axiom,(
    ! [A__questionmark_v0: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_418,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_419,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_420,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_421,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_422,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( A__questionmark_v0 = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v3),A__questionmark_v0) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v3),A__questionmark_v2)) ) )).

tff(formula_423,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( A__questionmark_v0 = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v3),A__questionmark_v0) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v3),A__questionmark_v2)) ) )).

tff(formula_424,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( A__questionmark_v0 = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v3) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v3)) ) )).

tff(formula_425,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( A__questionmark_v0 = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v3) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v2),A__questionmark_v3)) ) )).

tff(formula_426,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) )).

tff(formula_427,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v0) )).

tff(formula_428,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) )).

tff(formula_429,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v0) )).

tff(formula_430,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_431,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_432,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_433,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_434,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) )).

tff(formula_435,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v0) )).

tff(formula_436,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_437,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_438,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_439,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_440,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_441,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)) = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_442,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v2),A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_443,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_444,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_445,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_446,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_447,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_448,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_449,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_450,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v1) )).

tff(formula_451,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v1) )).

tff(formula_452,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_453,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_454,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> A__questionmark_v0 = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_455,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> A__questionmark_v0 = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_456,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v0,A__questionmark_v2) )
     => $lesseq(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_457,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_458,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v0,A__questionmark_v2) )
     => $lesseq(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_459,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_460,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2))
        & ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
            & $lesseq(A__questionmark_v0,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_461,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
        & ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
            & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_462,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_463,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_464,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_465,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_466,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_467,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_468,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_469,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_470,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
    <=> 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_471,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
    <=> 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_472,axiom,(
    ! [A__questionmark_v0: 'Int_int_int_fun_fun$',A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( ! [A__questionmark_v3: $int,A__questionmark_v4: $int] : $lesseq('fun_app$f'('fun_app$h'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4),A__questionmark_v3)
        & ! [A__questionmark_v3: $int,A__questionmark_v4: $int] : $lesseq('fun_app$f'('fun_app$h'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4),A__questionmark_v4)
        & ! [A__questionmark_v3: $int,A__questionmark_v4: $int,A__questionmark_v5: $int] :
            ( ( $lesseq(A__questionmark_v3,A__questionmark_v4)
              & $lesseq(A__questionmark_v3,A__questionmark_v5) )
           => $lesseq(A__questionmark_v3,'fun_app$f'('fun_app$h'(A__questionmark_v0,A__questionmark_v4),A__questionmark_v5)) ) )
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2) = 'fun_app$f'('fun_app$h'(A__questionmark_v0,A__questionmark_v1),A__questionmark_v2) ) )).

tff(formula_473,axiom,(
    ! [A__questionmark_v0: 'Int_set_int_set_int_set_fun_fun$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( ! [A__questionmark_v3: 'Int_set$',A__questionmark_v4: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4),A__questionmark_v3)
        & ! [A__questionmark_v3: 'Int_set$',A__questionmark_v4: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'(A__questionmark_v0,A__questionmark_v3),A__questionmark_v4),A__questionmark_v4)
        & ! [A__questionmark_v3: 'Int_set$',A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] :
            ( ( 'less_eq$'(A__questionmark_v3,A__questionmark_v4)
              & 'less_eq$'(A__questionmark_v3,A__questionmark_v5) )
           => 'less_eq$'(A__questionmark_v3,'fun_app$c'('fun_app$g'(A__questionmark_v0,A__questionmark_v4),A__questionmark_v5)) ) )
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2) = 'fun_app$c'('fun_app$g'(A__questionmark_v0,A__questionmark_v1),A__questionmark_v2) ) )).

tff(formula_474,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( A__questionmark_v0 = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)
     => $lesseq(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_475,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( A__questionmark_v0 = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)
     => 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_476,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & ( A__questionmark_v0 = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)
         => $false ) )
     => $false ) )).

tff(formula_477,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & ( A__questionmark_v0 = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)
         => $false ) )
     => $false ) )).

tff(formula_478,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v2),A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_479,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_480,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_481,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_482,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v2,A__questionmark_v3) )
     => $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v3)) ) )).

tff(formula_483,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$',A__questionmark_v3: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v3) )
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v3)) ) )).

tff(formula_484,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v0,A__questionmark_v2) )
     => $lesseq(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_485,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) )
     => 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_486,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2))
        & ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
            & $lesseq(A__questionmark_v0,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_487,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
        & ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
            & 'less_eq$'(A__questionmark_v0,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_488,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v1) )).

tff(formula_489,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v1) )).

tff(formula_490,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_491,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_492,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_493,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v0) )).

tff(formula_494,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : $lesseq('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v1) )).

tff(formula_495,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v1) )).

tff(formula_496,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)),A__questionmark_v1) ) )).

tff(formula_497,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_498,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v0)),A__questionmark_v1) ) )).

tff(formula_499,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v2),A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_500,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_501,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v0 ) )).

tff(formula_502,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_503,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v0 ) )).

tff(formula_504,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))
        & ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
            & 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_505,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less(A__questionmark_v0,'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2))
        & ( ( $less(A__questionmark_v0,A__questionmark_v1)
            & $less(A__questionmark_v0,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_506,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( A__questionmark_v0 = 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_507,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( A__questionmark_v0 = 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_508,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)),A__questionmark_v1) ) )).

tff(formula_509,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_510,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v0)),A__questionmark_v1) ) )).

tff(formula_511,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less('fun_app$f'('fun_app$h'('inf$a',A__questionmark_v2),A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_512,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> 'less_eq$'(A__questionmark_v0,A__questionmark_v1) ) )).

tff(formula_513,axiom,(
    ! [A__questionmark_v0: $int] :
      ( 'fun_app$'('bot$b',A__questionmark_v0)
    <=> 'member$'(A__questionmark_v0,'bot$a') ) )).

tff(formula_514,axiom,(
    ! [A__questionmark_v0: 'Int_bool_fun$'] :
      ( 'collect$'(A__questionmark_v0) = 'bot$a'
    <=> A__questionmark_v0 = 'bot$b' ) )).

tff(formula_515,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'less_eq$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v1) )
     => 'less_eq$'('fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_516,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'member$'(A__questionmark_v0,A__questionmark_v1)
        & 'less_eq$'(A__questionmark_v2,A__questionmark_v1) )
     => 'less_eq$'('fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v2),A__questionmark_v1) ) )).

tff(formula_517,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] :
      ( ! [A__questionmark_v1: $int] :
          ( 'member$'(A__questionmark_v1,A__questionmark_v0)
         => $false )
     => 'less_eq$'(A__questionmark_v0,'bot$a') ) )).

tff(formula_518,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $less(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v2,A__questionmark_v3) )
     => $less($difference(A__questionmark_v0,A__questionmark_v3),$difference(A__questionmark_v1,A__questionmark_v2)) ) )).

tff(formula_519,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( $difference(A__questionmark_v0,A__questionmark_v1) = $difference(A__questionmark_v2,A__questionmark_v3)
     => ( $less(A__questionmark_v0,A__questionmark_v1)
      <=> $less(A__questionmark_v2,A__questionmark_v3) ) ) )).

tff(formula_520,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( $difference(A__questionmark_v0,A__questionmark_v1) = $difference(A__questionmark_v2,A__questionmark_v3)
     => ( A__questionmark_v0 = A__questionmark_v1
      <=> A__questionmark_v2 = A__questionmark_v3 ) ) )).

tff(formula_521,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : $difference($difference(A__questionmark_v0,A__questionmark_v1),A__questionmark_v2) = $difference($difference(A__questionmark_v0,A__questionmark_v2),A__questionmark_v1) )).

tff(formula_522,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v2,A__questionmark_v3) )
     => $lesseq($difference(A__questionmark_v0,A__questionmark_v3),$difference(A__questionmark_v1,A__questionmark_v2)) ) )).

tff(formula_523,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => $lesseq($difference(A__questionmark_v2,A__questionmark_v1),$difference(A__questionmark_v2,A__questionmark_v0)) ) )).

tff(formula_524,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => $lesseq($difference(A__questionmark_v0,A__questionmark_v2),$difference(A__questionmark_v1,A__questionmark_v2)) ) )).

tff(formula_525,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int,A__questionmark_v3: $int] :
      ( $difference(A__questionmark_v0,A__questionmark_v1) = $difference(A__questionmark_v2,A__questionmark_v3)
     => ( $lesseq(A__questionmark_v0,A__questionmark_v1)
      <=> $lesseq(A__questionmark_v2,A__questionmark_v3) ) ) )).

tff(formula_526,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less($difference(A__questionmark_v0,A__questionmark_v2),$difference(A__questionmark_v1,A__questionmark_v2)) ) )).

tff(formula_527,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less($difference(A__questionmark_v2,A__questionmark_v1),$difference(A__questionmark_v2,A__questionmark_v0)) ) )).

tff(formula_528,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('remove$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),'fun_app$c'('insert$'(A__questionmark_v0),'bot$a')) )).

tff(formula_529,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $lesseq(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('sup$','fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('insert$'(A__questionmark_v1),'bot$a')) = 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_530,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( ~ 'member$'(A__questionmark_v0,A__questionmark_v1)
       => 'member$'(A__questionmark_v0,A__questionmark_v2) )
     => 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('sup$',A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_531,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2))
    <=> ( 'member$'(A__questionmark_v0,A__questionmark_v1)
        | 'member$'(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_532,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] :
      ( 'member$'(A__questionmark_v0,'fun_app$c'('remove$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( 'member$'(A__questionmark_v0,A__questionmark_v2)
        & A__questionmark_v0 != A__questionmark_v1 ) ) )).

tff(formula_533,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq('fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v2)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v2)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_534,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'('fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v2)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v2)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_535,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $lesseq('fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v2)
    <=> ( $lesseq(A__questionmark_v0,A__questionmark_v2)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_536,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'('fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v2)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v2)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_537,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','bot$a'),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_538,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'bot$a') = A__questionmark_v0 )).

tff(formula_539,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'bot$a' = 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)
    <=> ( A__questionmark_v0 = 'bot$a'
        & A__questionmark_v1 = 'bot$a' ) ) )).

tff(formula_540,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> ( A__questionmark_v0 = 'bot$a'
        & A__questionmark_v1 = 'bot$a' ) ) )).

tff(formula_541,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> ( A__questionmark_v0 = 'bot$a'
        & A__questionmark_v1 = 'bot$a' ) ) )).

tff(formula_542,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','bot$a'),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_543,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'bot$a' = 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)
    <=> ( A__questionmark_v0 = 'bot$a'
        & A__questionmark_v1 = 'bot$a' ) ) )).

tff(formula_544,axiom,(
    ! [A__questionmark_v0: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'bot$a') = A__questionmark_v0 )).

tff(formula_545,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'less_eq$'('fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1),A__questionmark_v2)
    <=> ( 'less_eq$'(A__questionmark_v0,A__questionmark_v2)
        & 'less_eq$'(A__questionmark_v1,A__questionmark_v2) ) ) )).

tff(formula_546,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1) = 'bot$a'
    <=> ( A__questionmark_v0 = 'bot$a'
        & A__questionmark_v1 = 'bot$a' ) ) )).

tff(formula_547,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)) = A__questionmark_v0 )).

tff(formula_548,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1)) = A__questionmark_v0 )).

tff(formula_549,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)) = A__questionmark_v0 )).

tff(formula_550,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] : 'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)) = A__questionmark_v0 )).

tff(formula_551,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: $int,A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('insert$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('insert$'(A__questionmark_v1),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_552,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('insert$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_553,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v0)) = A__questionmark_v0 )).

tff(formula_554,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)) = A__questionmark_v0 )).

tff(formula_555,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = A__questionmark_v1 )).

tff(formula_556,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_557,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v0)) = A__questionmark_v0 )).

tff(formula_558,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)) = A__questionmark_v0 )).

tff(formula_559,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = A__questionmark_v1 )).

tff(formula_560,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v0) = A__questionmark_v0 )).

tff(formula_561,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('minus$',A__questionmark_v1),A__questionmark_v0)) = 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_562,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('minus$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1) )).

tff(formula_563,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_564,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less(A__questionmark_v0,'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_565,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_566,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less(A__questionmark_v0,'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_567,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
    <=> ( A__questionmark_v1 = 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v0)
        & A__questionmark_v1 != A__questionmark_v0 ) ) )).

tff(formula_568,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
    <=> ( A__questionmark_v1 = 'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v1),A__questionmark_v0)
        & A__questionmark_v1 != A__questionmark_v0 ) ) )).

tff(formula_569,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ( 'fun_app$d'('less$'('fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2)
        & ( ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v2)
            & 'fun_app$d'('less$'(A__questionmark_v1),A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_570,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $less('fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1),A__questionmark_v2)
        & ( ( $less(A__questionmark_v0,A__questionmark_v2)
            & $less(A__questionmark_v1,A__questionmark_v2) )
         => $false ) )
     => $false ) )).

tff(formula_571,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v1 ) )).

tff(formula_572,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1) = A__questionmark_v1 ) )).

tff(formula_573,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v1 ) )).

tff(formula_574,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v1),A__questionmark_v0) = A__questionmark_v1 ) )).

tff(formula_575,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_576,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less(A__questionmark_v0,'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v2),A__questionmark_v1)) ) )).

tff(formula_577,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$d'('less$'(A__questionmark_v0),A__questionmark_v1)
     => 'fun_app$d'('less$'(A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_578,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => $less(A__questionmark_v0,'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v1),A__questionmark_v2)) ) )).

tff(formula_579,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ! [A__questionmark_v3: 'Int_set$',A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v3),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v4),A__questionmark_v5)) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v3),A__questionmark_v4)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v3),A__questionmark_v5))
     => 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)) ) )).

tff(formula_580,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ! [A__questionmark_v3: $int,A__questionmark_v4: $int,A__questionmark_v5: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v3),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v4),A__questionmark_v5)) = 'fun_app$f'('fun_app$h'('sup$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v3),A__questionmark_v4)),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v3),A__questionmark_v5))
     => 'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1)),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v2)) ) )).

tff(formula_581,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( ! [A__questionmark_v3: 'Int_set$',A__questionmark_v4: 'Int_set$',A__questionmark_v5: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v3),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v4),A__questionmark_v5)) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v3),A__questionmark_v4)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v3),A__questionmark_v5))
     => 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) ) )).

tff(formula_582,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ! [A__questionmark_v3: $int,A__questionmark_v4: $int,A__questionmark_v5: $int] : 'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v3),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v4),A__questionmark_v5)) = 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('sup$a',A__questionmark_v3),A__questionmark_v4)),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v3),A__questionmark_v5))
     => 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$f'('fun_app$h'('sup$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2)) ) )).

tff(formula_583,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_584,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$f'('fun_app$h'('sup$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_585,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_586,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$f'('fun_app$h'('sup$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v2)),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_587,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_588,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),'fun_app$f'('fun_app$h'('inf$a',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v1)),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_589,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_590,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] : 'fun_app$f'('fun_app$h'('sup$a','fun_app$f'('fun_app$h'('inf$a',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$f'('fun_app$h'('inf$a','fun_app$f'('fun_app$h'('sup$a',A__questionmark_v0),A__questionmark_v2)),'fun_app$f'('fun_app$h'('sup$a',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_591,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_592,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_593,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_594,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_595,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2))),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v2),A__questionmark_v0)) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2))),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v2),A__questionmark_v0)) )).

tff(formula_596,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_597,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)) )).

tff(formula_598,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('fun_app$g'('inf$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_599,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] : 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('fun_app$g'('inf$',A__questionmark_v0),A__questionmark_v1)),A__questionmark_v2) = 'fun_app$c'('fun_app$g'('inf$','fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v2)),'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)) )).

tff(formula_600,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$c'('fun_app$g'('sup$','fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('atLeastAtMost$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_601,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$',A__questionmark_v2: 'Int_set$'] :
      ( 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a') = 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v1),A__questionmark_v2)
    <=> ( ( A__questionmark_v1 = 'bot$a'
          & A__questionmark_v2 = 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a') )
        | ( A__questionmark_v1 = 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a')
          & A__questionmark_v2 = 'bot$a' )
        | ( A__questionmark_v1 = 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a')
          & A__questionmark_v2 = 'fun_app$c'('insert$'(A__questionmark_v0),'bot$a') ) ) ) )).

tff(formula_602,axiom,(
    ! [A__questionmark_v0: 'Int_set$',A__questionmark_v1: 'Int_set$',A__questionmark_v2: $int] :
      ( 'fun_app$c'('fun_app$g'('sup$',A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('insert$'(A__questionmark_v2),'bot$a')
    <=> ( ( A__questionmark_v0 = 'bot$a'
          & A__questionmark_v1 = 'fun_app$c'('insert$'(A__questionmark_v2),'bot$a') )
        | ( A__questionmark_v0 = 'fun_app$c'('insert$'(A__questionmark_v2),'bot$a')
          & A__questionmark_v1 = 'bot$a' )
        | ( A__questionmark_v0 = 'fun_app$c'('insert$'(A__questionmark_v2),'bot$a')
          & A__questionmark_v1 = 'fun_app$c'('insert$'(A__questionmark_v2),'bot$a') ) ) ) )).

tff(formula_603,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: 'Int_set$'] : 'fun_app$c'('insert$'(A__questionmark_v0),A__questionmark_v1) = 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('insert$'(A__questionmark_v0),'bot$a')),A__questionmark_v1) )).

tff(formula_604,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$c'('fun_app$g'('sup$','fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('atLeastLessThan$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_605,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $lesseq(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$c'('fun_app$g'('sup$','fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('atLeastAtMost$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_606,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$c'('fun_app$g'('sup$','fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('atLeastLessThan$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_607,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int] :
      ( $less(A__questionmark_v0,A__questionmark_v1)
     => 'fun_app$c'('fun_app$g'('sup$','fun_app$c'('insert$'(A__questionmark_v0),'bot$a')),'fun_app$b'('greaterThanLessThan$'(A__questionmark_v0),A__questionmark_v1)) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v1) ) )).

tff(formula_608,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( ( $lesseq(A__questionmark_v0,A__questionmark_v1)
        & $less(A__questionmark_v1,A__questionmark_v2) )
     => 'fun_app$c'('fun_app$g'('sup$','fun_app$b'('atLeastAtMost$'(A__questionmark_v0),A__questionmark_v1)),'fun_app$b'('greaterThanLessThan$'(A__questionmark_v1),A__questionmark_v2)) = 'fun_app$b'('atLeastLessThan$'(A__questionmark_v0),A__questionmark_v2) ) )).

tff(formula_609,axiom,(
    ! [A__questionmark_v0: $int,A__questionmark_v1: $int,A__questionmark_v2: $int] :
      ( 'member$'(A__questionmark_v0,'fun_app$b'('greaterThanLessThan$'(A__questionmark_v1),A__questionmark_v2))
    <=> ( $less(A__questionmark_v1,A__questionmark_v0)
        & $less(A__questionmark_v0,A__questionmark_v2) ) ) )).

tff(formula_610,axiom,(
    ! [B: tlbool] :
      ( B = tltrue
      | B = tlfalse ) )).

tff(formula_611,conjecture,(
    tltrue = tlfalse )).

