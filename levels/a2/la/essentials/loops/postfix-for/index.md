---
title: 'Postfixa forma de `for`'
---

{% include menu.html %}

Iam alios modificatores sententiae cognoscis: [`if` et `else`](/la/essentials/conditional-checks/modifiers) et [`while` et `until`](/la/essentials/loops/modifiers). Hoc bonum nuntium est. In Raku, res similes modis similibus operantur.

Breve corpus anuli `for` post se habere potest:

```raku
.say for 1..7;
```

Intervalla cum `for` in fine valde naturalia videntur.

Hoc programma idem facit atque anulus usitatus:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vel idem facit atque hic anulus cum `$_`:

```raku
for 1..7 {
    .say;
}
```

Hic, `.say` est modus brevis scribendi `$_.say`.

{% include nav.html %}
