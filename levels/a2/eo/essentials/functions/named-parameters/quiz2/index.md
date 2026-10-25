---
title: Kvizo 2 — Variabloj kiel nomitaj parametroj
---

{% include menu.html %}

Jen denove la funkcio el la antaŭa kvizo:

```raku
sub f(:$a, :$b) {
    $a - $b
}
```

La programo ankaŭ havas tri variablojn:

```raku
my $a = 1;
my $b = 2;
my $c = 3;
```

Vi pasas du el la tri variabloj al la funkcio. Kiuj vokoj estas ĝustaj? Marku ĉiujn.

{:.quiz}
1 | f(a => $a, b => $b)
1 | f(a => $c, b => $c)
0 | f($a, $b) | Poziciaj argumentoj estas pasitaj ĉi tie anstataŭ la nomitaj.
1 | f(:$a, :$b)
0 | f($:a, $:b) | Ne valida Raku-sintakso.
0 | f(:$b, :$c) | Neniu nomita parametro `c`.
0 | f(:$a, c => $c) | Neniu nomita parametro `c`.
1 | f(:$a, b => $c)
1 | f(:$a, :b($c)) | Sama kiel supre.
1 | f(:a($a), :b($c)) | Ankaŭ bone, kvankam iom redundanta.

{% include quiz.html %}

{% include nav.html %}
