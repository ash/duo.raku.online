---
title: 'Solvo: Trovu metodon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Vi povas trovi la fontkodon en la dosiero [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Eligo

```
True
```

## Komentoj

1. `.^find_method` redonas la metodon, se ĝi ekzistas. Se ĝi ne ekzistas, ĝi redonas nedifinitan valoron. Poste `so` transformas tion en simplan Boolean valoron.

1. `Dog` mem difinas neniujn metodojn, sed la rezulto tamen estas `True`. `find_method` traserĉas la tutan heredan ĉenon kaj trovas `speak` pli supre, en `Animal`. Same ankaŭ vera metodvoko sur `Dog` trovas la hereditan metodon.

{% include nav.html %}
