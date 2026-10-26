---
title: 'Solvo: La temvariablo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Eligo

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Komentoj

1. Buklo `for` agordas la teman variablon `$_` al ĉiu ero laŭvice. Do la bloko ruliĝas tri fojojn, kaj `$_` estas `'apple'`, poste `'fig'`, poste `'cherry'`.

1. Ene de la ĉeno, `$_` enmetas la nunan vorton. La voko `.chars`, mallongigo de `$_.chars`, donas ĝian longon. Ambaŭ uzas la saman temon, do la nombro ĉiam kongruas kun la vorto en la linio.

{% include nav.html %}
