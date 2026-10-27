---
title: 'Quiz — Das Proc-Objekt'
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | ein Fehler

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` ist die ganze Zahl, die das Programm zurückgegeben hat. Hier hat die Shell den Befehl `exit 2` bekommen, also ist sie `2`. Das Programm wirft keine Ausnahme. Das fehlgeschlagene `Proc` wird in `$proc` gespeichert und mit `.exitcode` geprüft. Das Ergebnis anzusehen zählt als Behandlung. Eine Ausnahme gäbe es nur, wenn ein fehlgeschlagenes `Proc` ohne Prüfung weggeworfen würde.

</div>

{% include nav.html %}
