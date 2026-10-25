---
title: 'Postfixa formo de `for`'
---

{% include menu.html %}

Vi jam vidis aliajn deklarajn modifilojn: [`if` kaj `else`](/eo/essentials/conditional-checks/modifiers) kaj [`while` kaj `until`](/eo/essentials/loops/modifiers). Tio estas eta kialo por festi: la dezajno de Raku estas tre konsekvenca.

Kun mallonga korpo de buklo, vi povas uzi la postfiksan formon de `for`:

```raku
.say for 1..7;
```

Kiel vi vidas, intervaloj tre bone kongruas kun la postfiksa `for`.

Ĉi tiu programo faras la samon kiel pli kutima versio:

```raku
for 1..7 -> $n {
    say $n;
}
```

Aŭ, se vi uzas la defaŭltan buklan variablon, la samon kiel ĉi tio:

```raku
for 1..7 {
    .say;
}
```

Ĉi tie, `.say` estas mallongigo de `$_.say`.

{% include nav.html %}
