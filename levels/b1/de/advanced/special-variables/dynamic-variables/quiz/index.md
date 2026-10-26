---
title: Quiz — Dynamische Variablen
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nothing
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`show` ist auf der obersten Ebene geschrieben, direkt neben `my $*n = 1`. Aber dieser Ort spielt keine Rolle. Raku sucht eine dynamische Variable über den *Aufrufstapel*. Wo der Code steht, ist nicht wichtig. Hier wird `show` aus `run` aufgerufen, das `$*n` noch einmal als `2` deklariert hat. Also ist das der gültige Wert, und das Programm gibt `2` aus.

</div>

{% include nav.html %}
