---
title: Quiz — Metodi di classe
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma? Il metodo `n` non usa nessun attributo.

```raku
class T {
    method n { 42 }
}

say T.n + T.new.n;
```

{:.quiz}
0 | 42
1 | 84
0 | (T)
0 | un errore

{% include quiz.html %}

{% include nav.html %}
