---
title: 'Solutio: Quemque numerum repetere'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Inveni codicem fontem in archivo [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Exitus

```
[1 2 2 3 3 3 4 4 4 4]
```

## Commentarii

1. Non debes exacte unum `take` in quoque gyro habere. Specta hic interius `take $n for 1..$n`. In quoque gyro `take` alio numero vicium currit. Haec libertas `gather`/`take` fortius facit quam simplicem `map`.

1. Ansa exterior variabilem cum nomine habet, `-> $n`. Hoc consulto facimus. Finge: `$_` in ansa interiore adhibemus. Tum interior `for` suum numeratorem in `$_` ponit. Itaque numeratorem capimus, non numerum currentem.

1. `gather` simpliciter omnem valorem ordine colligit quem codex capit. Itaque `@result` habet unum `1`, duos `2`, tres `3` et quattuor `4`.

{% include nav.html %}
