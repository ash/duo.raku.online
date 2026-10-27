---
title: 'Solvo: Numeru la liniojn'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Eligo

```
1: apple
2: banana
3: cherry
```

## Komentoj

1. `spurt` skribas la tri vortojn en la dosieron. Linifinoj apartigas la vortojn.

1. `.IO.lines` donas la liniojn unu post la alia. La linioj ne havas linifinon ĉe la fino. Ni tenas nombrilon `$n`. Ĉiu rondo de la buklo aldonas 1 al ĝi. Do ni presas ĉiun linion kun ĝia loko en la dosiero.

{% include nav.html %}
