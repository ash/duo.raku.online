---
title: 'Solution: Stringhe vere e false'
---

{% include menu.html %}

Questo esercizio è come [quello precedente](../../true-false-numbers). Ma questa volta il compito è un po' più difficile. Qui più stringhe possono sembrare `False`. Guardiamole.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Di tutte queste stringhe, solo la stringa vuota diventa `False`. Tutte le altre stringhe diventano `True`. Anche una stringa con solo spazi diventa `True`. Anche una stringa con il carattere `0` è `True`.

🦋 Puoi trovare il programma completo con l'esempio sopra nel file [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
