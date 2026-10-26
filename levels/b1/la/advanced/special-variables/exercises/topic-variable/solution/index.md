---
title: 'Solutio: Topic variabilis'
translations_gpt:
---

{% include menu.html %}

Ecce una solutio possibilis.

## Codex

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Inveni codicem fontem in archivo [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Exitus

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Commentarii

1. Anulus `for` variabilem thematis `$_` ad singula elementa ordine ponit. Itaque clausula ter currit, et `$_` est `'apple'`, deinde `'fig'`, deinde `'cherry'`.

1. Intra chordam `$_` verbum praesens inserit. Vocatio `.chars`, forma brevis pro `$_.chars`, longitudinem eius dat. Ambo idem thema adhibent, itaque numerus semper verbo in linea convenit.

{% include nav.html %}
