---
title: 'Solution: La variabile topic'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. In un ciclo `for`, la variabile topic `$_` riceve ogni elemento, uno alla volta. Quindi il blocco gira tre volte. Prima `$_` è `'apple'`, poi `'fig'`, poi `'cherry'`.

1. Nella stringa, `$_` mette la parola attuale nel testo. La chiamata `.chars` dà la lunghezza della parola. È la forma breve di `$_.chars`. Tutte e due usano lo stesso topic. Quindi il numero corrisponde sempre alla parola sulla riga.

{% include nav.html %}
