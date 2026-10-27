---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside und dann outside
0 | Boom!
0 | ein Fehler

{% include quiz.html %}

<div class="extended-explanation">

Hier passieren zwei Dinge. Erstens bricht `die` den Rest des `try`-Blocks sofort ab. Die Zeile `say 'inside'` läuft also nie, und aus dem Block wird nichts ausgegeben. Zweitens fängt `try` die Ausnahme, also hält das Programm selbst nicht an. Es läuft nach dem Block weiter, und `say 'outside'` läuft ganz normal. Die einzige ausgegebene Zeile ist also `outside`. Wenn Sie nachsehen würden, würden Sie sehen, dass `$r` undefiniert ist. Die Meldung `Boom!` würde in `$!` warten.

</div>

{% include nav.html %}
