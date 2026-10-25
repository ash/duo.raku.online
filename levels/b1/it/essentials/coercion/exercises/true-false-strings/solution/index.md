---
title: 'Solution: Stringhe vere e false'
---

{% include menu.html %}

Questo esercizio è simile a [quello precedente](../../true-false-numbers). Ma questa volta il compito è un po' più difficile. Ci sono più stringhe ‘sospette’, che potrebbero essere trattate come `False`. Esploriamole.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Di tutte queste stringhe, solo la stringa vuota viene convertita in `False`. Tutte le altre stringhe diventano `True`, anche se contengono solo spazi o il carattere `0`.

🦋 Puoi trovare il programma completo con l'esempio sopra nel file [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
