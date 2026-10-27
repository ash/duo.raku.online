---
title: 'Solvo: Konservu kaj legu'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Vi povas trovi la fontkodon en la dosiero [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Eligo

```
84
```

## Komentoj

1. `spurt` kreas la dosieron kaj skribas la ĉenon en ĝin. `slurp` relegas la tutan dosieron en ĉenon. Kune, ili faras la tutan laboron de konservado kaj ŝargado.

1. `slurp` redonas tekston, `"42\n"`. Do antaŭ ol kalkuli, ni uzas `trim` por forigi la linifinon ĉe la fino. Poste ni vokas `.Int` por transformi la tekston en nombron. La rezulto, `42 * 2`, estas `84`.

1. Tamen la programo ankoraŭ funkcias sen `.trim.Int`.

{% include nav.html %}
