---
title: 'Solvo: Numeru la liniojn'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `spurt` skribas la tri vortojn en la dosieron, kun linifinoj inter ili.

1. `.IO.lines` donas la liniojn unu post la alia, sen la linifinoj ĉe iliaj finoj. Ni tenas nombrilon `$n` kaj pliigas ĝin en ĉiu rondo. Do ĉiu linio estas presata kune kun sia pozicio en la dosiero.

{% include nav.html %}
