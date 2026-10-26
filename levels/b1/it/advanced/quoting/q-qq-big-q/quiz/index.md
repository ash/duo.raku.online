---
title: Quiz — Quoting
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

L'operatore `q` funziona come le virgolette singole. Non elabora le sequenze di escape con backslash come `\n`. La stringa tiene tutti e quattro i caratteri: `a`, `\`, `n` e `b`. Solo una forma interpolante, come `qq` o le virgolette doppie, trasforma `\n` in un vero carattere di nuova riga.

</div>

{% include nav.html %}
