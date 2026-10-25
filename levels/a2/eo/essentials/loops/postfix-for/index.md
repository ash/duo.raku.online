---
title: 'Postfixa formo de `for`'
---

{% include menu.html %}

Vi jam konas aliajn deklarajn modifilojn: [`if` kaj `else`](/eo/essentials/conditional-checks/modifiers) kaj [`while` kaj `until`](/eo/essentials/loops/modifiers). Tio estas bona novaĵo. En Raku, similaj aferoj funkcias en similaj manieroj.

Mallonga korpo de buklo povas havi `for` post si:

```raku
.say for 1..7;
```

Intervaloj aspektas tre nature kun `for` ĉe la fino.

Ĉi tiu programo faras la samon kiel normala buklo:

```raku
for 1..7 -> $n {
    say $n;
}
```

Aŭ ĝi faras la samon kiel ĉi tiu buklo kun `$_`:

```raku
for 1..7 {
    .say;
}
```

Ĉi tie, `.say` estas mallonga maniero skribi `$_.say`.

{% include nav.html %}
