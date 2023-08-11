tff(course_type,type,
    course: $tType ).

tff(course_type2,type,
    course: $tType ).

tff(decl_26,type,
    teaches: ( professor * course ) > $o ).

tff(decl_28,type,
    coordinatorof: course > professor ).

tff(coordinator_teaches1,axiom,
    ! [X8: course] : teaches(coordinatorof(X8),X8) ).

tff(coordinator_teaches2,axiom,
    ! [X: course] : teaches(coordinatorof(X),X) ).
