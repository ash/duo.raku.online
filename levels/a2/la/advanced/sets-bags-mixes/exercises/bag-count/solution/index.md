---
title: 'Solutio: Numerare in sacculo'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `'the cat sat on the mat'.words` sex verba dat. `bag` quodque verbum numerat. Subscriptum `<the>` reddit quotiens sacculus `the` viderit. Responsum est duo.

1. Methodus `total` omnes numeros addit. Haec summa est numerus verborum in sacculo: `6`.

{% include nav.html %}
