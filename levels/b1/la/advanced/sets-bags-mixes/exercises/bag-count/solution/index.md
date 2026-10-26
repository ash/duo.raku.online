---
title: 'Solutio: Numerare in sacculo'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Inveni codicem fontem in archivo [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Exitus

```
2
6
```

## Commentarii

1. `'the cat sat on the mat'.words` sex verba dat, et `bag` quodque eorum numerat. Subscriptum `<the>` reddit quotiens `the` visum sit, id est bis.

1. Methodus `total` omnes numeros addit. Hoc idem est ac numerus verborum in sacculum positorum, `6`.

{% include nav.html %}
