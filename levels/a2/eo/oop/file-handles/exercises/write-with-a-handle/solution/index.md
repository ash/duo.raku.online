---
title: 'Solvo: Skribi per tenilo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Vi povas trovi la fontkodon en la dosiero [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Eligo

```
1
2
3
```

## Komentoj

1. `open` kun la flago `:w` donas tenilon por skribado. La tenilo restas malfermita dum la tuta buklo. Do ĉiu `$fh.say` aldonas unu plian linion. Ĉi tie, tenilo estas pli bona ol `spurt`. `spurt` malfermas la dosieron denove ĉiufoje.

1. `close` skribas ĉiujn datumojn al la disko. Do la `slurp` post ĝi relegas ĉiujn tri liniojn.

{% include nav.html %}
