---
title: 'Postfixa formo de `for`'
---

{% include menu.html %}

Ni jam vidis aliajn deklarajn modifilojn: [`if` kaj `else`](/eo/essentials/conditional-checks/modifiers) kaj [`while` kaj `until`](/eo/essentials/loops/modifiers). Tio estas kialo por iom festi, ĉar la dezajno de Raku estas tre konsekvenca.

Kiam la korpo de la buklo estas mallonga, vi povas skribi la `for` buklon en postfiksa formo:

```raku
.say for 1..7;
```

Kiel vi vidas, intervaloj aspektas tre nature kun la postfiksa formo de `for`.

Ĉi tiu programo estas la sama kiel pli tradicia versio:

```raku
for 1..7 -> $n {
    say $n;
}
```

Aŭ, se vi uzas la defaŭltan buklan variablon, ĝi estas la sama kiel:

```raku
for 1..7 {
    .say;
}
```

Ĉi tie, `.say` estas la mallonga formo de `$_.say`.

{% include nav.html %}
