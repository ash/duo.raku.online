---
title: 'Quiz — Das Proc-Objekt'
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

`.exitcode` ist die ganze Zahl, die das Programm zurückgegeben hat. Hier hat die Shell den Befehl `exit 2` bekommen. Also ist die Zahl `2`. Das Programm wirft keine Ausnahme. Es hält also nicht mit einem Fehler an. Das Programm behält das fehlgeschlagene `Proc` in `$proc`. Dann sieht es sich das `Proc` mit `.exitcode` an. Das Ansehen des Ergebnisses zählt als Behandlung. Sie bekommen eine Ausnahme nur in einem Fall. Das ist der Fall, wenn Sie ein fehlgeschlagenes `Proc` ohne Prüfung wegwerfen.

</div>

{% include nav.html %}
