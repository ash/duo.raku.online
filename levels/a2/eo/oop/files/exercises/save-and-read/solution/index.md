---
title: 'Solvo: Konservu kaj legu'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `spurt` kreas la dosieron kaj skribas la ĉenon en ĝin. `slurp` relegas la tutan dosieron en ĉenon. Kune, ili faras ambaŭ laborojn. Ili konservas datumojn kaj ŝargas ilin denove.

1. `slurp` redonas tekston: `"42\n"`. Do ni uzas `trim` por forigi la linifinon ĉe la fino. Poste ni vokas `.Int` por fari nombron el la teksto. Nun ni povas kalkuli per ĝi. La rezulto de `42 * 2` estas `84`.

1. Sed la programo funkcias ankaŭ sen `.trim.Int`.

{% include nav.html %}
