---
title: 'Solution: La variabile topic'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Puoi trovare il codice sorgente nel file [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Output

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Commenti

1. Un ciclo `for` imposta la variabile topic `$_` su ciascun elemento a turno. Quindi il blocco viene eseguito tre volte, e `$_` è `'apple'`, poi `'fig'`, poi `'cherry'`.

1. Dentro la stringa, `$_` inserisce la parola attuale. La chiamata `.chars`, forma breve di `$_.chars`, ne dà la lunghezza. Entrambe usano lo stesso topic, quindi il conteggio corrisponde sempre alla parola sulla riga.

{% include nav.html %}
