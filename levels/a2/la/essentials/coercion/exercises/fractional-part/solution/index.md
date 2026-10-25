---
title: 'Solutio: Partem fractionalem'
---

{% include menu.html %}

Quomodo partem fractionalem numeri obtines? Partem integram subtrahe. Ut partem integram habeas, numerum ad `Int` converte.

## Codex

Hic est una solutio:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Invenias programmatum in archivo [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Exitus

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Commentarius

Tempta programma etiam cum numeris negativis. Exempli gratia:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Hic quoque eventus rectus est:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
