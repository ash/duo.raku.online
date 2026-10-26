---
title: 'Solvo: La temvariablo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. En buklo `for`, la tema variablo `$_` ricevas ĉiun eron, unu post la alia. Do la bloko ruliĝas tri fojojn. Unue `$_` estas `'apple'`, poste `'fig'`, poste `'cherry'`.

1. En la ĉeno, `$_` metas la nunan vorton en la tekston. La voko `.chars` donas la longon de la vorto. Ĝi estas mallongigo de `$_.chars`. Ambaŭ uzas la saman temon. Do la nombro ĉiam konvenas al la vorto en la linio.

{% include nav.html %}
