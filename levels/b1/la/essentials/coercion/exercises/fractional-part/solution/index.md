---
title: 'Solutio: Partem fractionalem'
---

{% include menu.html %}

Ut partem fractionalem numeri obtineas, partem eius integram ab eo subtrahe. Partem integram obtines, si numerum ad `Int` convertis.

## Codex

Solutio possibilis infra monstratur:

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

Eodem programmate cum numeris negativis quoque tenta, exempli gratia:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Hoc in casu, eventus quoque rectus esse debet:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
