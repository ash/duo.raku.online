---
title: Quiz — Quoting
---

{% include menu.html %}

Cosa stampa questo programma?

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

L'operatore `q` funziona come le virgolette singole. Non elabora le sequenze di escape con backslash come `\n`. Quindi la stringa tiene tutti e quattro i caratteri: `a`, `\`, `n`, `b`. Solo una forma che interpola trasforma `\n` in un vero carattere di nuova riga. Due esempi sono `qq` e le virgolette doppie.

</div>

{% include nav.html %}
