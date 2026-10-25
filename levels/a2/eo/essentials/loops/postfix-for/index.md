---
title: 'Postfixa formo de `for`'
---

{% include menu.html %}

Vi jam konas aliajn modifilojn de deklaroj: [`if` kaj `else`](/eo/essentials/conditional-checks/modifiers) kaj [`while` kaj `until`](/eo/essentials/loops/modifiers). Tio estas bona novaĵo, ĉar Raku havas tre konsekvencan dezajnon.

Kiam la korpo de la buklo estas mallonga, vi povas skribi `for` post ĝi:

```raku
.say for 1..7;
```

Intervaloj aspektas tre nature kun ĉi tiu formo de `for`.

Ĉi tiu programo faras la samon kiel pli kutima buklo:

```raku
for 1..7 -> $n {
    say $n;
}
```

Aŭ, kun la defaŭlta bukla variablo, ĝi faras la samon kiel ĉi tio:

```raku
for 1..7 {
    .say;
}
```

Ĉi tie, `.say` estas mallonga maniero skribi `$_.say`.

{% include nav.html %}
