---
title: Quiz — Dynamische Variablen
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Die Funktion `show` steht auf der obersten Ebene. Sie steht direkt neben `my $*n = 1`. Aber dieser Ort ist egal. Raku sucht eine dynamische Variable durch den *Aufrufstapel*. Raku schaut nicht darauf, wo der Code steht. Hier ruft `run` die Funktion `show` auf. Und `run` deklariert `$*n` noch einmal als `2`. Also gilt dieser Wert, und das Programm gibt `2` aus.

</div>

{% include nav.html %}
