-module(about_atoms).
-compile(export_all).

truth() ->
    __ =:= true.

truth_is_not_always_boolean() ->
    is_atom(true) =:= __.

strings_are_not_atoms() ->
    is_atom("true") =:= __.

however_atoms_might_look_like_a_string() ->
    is_atom('true') =:= __.

atoms_are_the_basis_of_all_calls() ->
    apply(erlang, list_to_atom, ["erlang"]) =:= __.

