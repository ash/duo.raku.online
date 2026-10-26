---
title: 'Solutio: Quemque numerum repetere'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Nulla regula unum tantum `take` in quoque transitu postulat. Hic interius `take $n for 1..$n` in quoque transitu `take` alio numero vicium currit. Haec flexibilitas est exacte quod `gather`/`take` potentius facit quam simplicem `map`.

1. Ansa exterior variabilem nominatam, `-> $n`, consulto adhibet. Finge nos `$_` in ansa interiore adhibere. Tum interior `for` suum numeratorem in `$_` poneret. Itaque numeratorem loco numeri currentis caperemus.

1. `gather` simpliciter omnem valorem captum ordine colligit. Itaque `@result` continet `1`, deinde duos `2`, deinde tres `3`, deinde quattuor `4`.

{% include nav.html %}
