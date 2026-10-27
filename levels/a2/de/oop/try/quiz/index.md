---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Hier passieren zwei Dinge. Erstens stoppt `die` sofort den Rest des `try`-Blocks. Also kommt das Programm nie zur Zeile `say 'inside'`. Das Programm gibt nichts aus dem Block aus. Zweitens fängt `try` die Ausnahme, also den Fehler von `die`. Darum hält das Programm selbst nicht an. Es läuft nach dem Block weiter. `say 'outside'` läuft ganz normal. So gibt das Programm nur eine Zeile aus: `outside`. Sie können sich auch `$r` und `$!` ansehen. `$r` ist undefiniert. Die Meldung `Boom!` wartet in `$!`.

</div>

{% include nav.html %}
