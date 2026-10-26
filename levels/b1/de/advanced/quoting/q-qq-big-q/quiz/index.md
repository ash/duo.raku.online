---
title: Quiz — Quoting
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

Der Operator `q` funktioniert wie einfache Anführungszeichen. Er verarbeitet keine Backslash-Escape-Sequenzen wie `\n`. Der String behält alle vier Zeichen: `a`, `\`, `n` und `b`. Nur eine interpolierende Form wie `qq` oder doppelte Anführungszeichen macht aus `\n` einen echten Zeilenumbruch.

</div>

{% include nav.html %}
