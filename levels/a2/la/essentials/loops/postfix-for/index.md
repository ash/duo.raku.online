---
title: 'Postfixa forma de `for`'
---

{% include menu.html %}

Iam alios modificatores sententiae cognoscis: [`if` et `else`](/la/essentials/conditional-checks/modifiers) et [`while` et `until`](/la/essentials/loops/modifiers). Hoc bonum nuntium est, quia lingua Raku modo valde constanti facta est.

Cum corpus anuli breve est, `for` post id scribere potes:

```raku
.say for 1..7;
```

Intervalla cum hac forma `for` valde naturalia videntur.

Hoc programma idem facit atque anulus magis usitatus:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vel, cum variabili anuli praefinita, idem facit atque hoc:

```raku
for 1..7 {
    .say;
}
```

Hic, `.say` est modus brevis scribendi `$_.say`.

{% include nav.html %}
