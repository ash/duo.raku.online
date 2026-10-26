---
title: 'Solutio: Topic variabilis'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. In anulo `for` variabilis thematis `$_` singula elementa accipit, unum post alterum. Itaque clausula ter currit. Primo `$_` est `'apple'`, deinde `'fig'`, deinde `'cherry'`.

1. In chorda `$_` verbum praesens in textum ponit. Vocatio `.chars` longitudinem verbi dat. Est forma brevis pro `$_.chars`. Ambo idem thema adhibent. Itaque numerus semper verbo in linea convenit.

{% include nav.html %}
