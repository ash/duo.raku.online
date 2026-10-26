---
title: Quiz — Quoting
---

{% include menu.html %}

Was gibt dieses Programm aus?

```raku
say q{a\nb};
```

{:.quiz}
1 | a\nb
0 | a<newline>b
0 | ab
0 | anb

{% include quiz.html %}

<div class="extended-explanation">

Der Operator `q` funktioniert wie einfache Anführungszeichen. Er verarbeitet keine Backslash-Escape-Sequenzen wie `\n`. Deshalb behält der String alle vier Zeichen: `a`, `\`, `n`, `b`. Nur eine Form, die interpoliert, macht aus `\n` einen echten Zeilenumbruch. Beispiele sind `qq` und doppelte Anführungszeichen.

</div>

{% include nav.html %}
