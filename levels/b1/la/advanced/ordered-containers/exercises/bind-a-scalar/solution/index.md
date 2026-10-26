---
title: 'Solutio: Scalarem ligare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

## Codex

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Inveni codicem fontem in archivo [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Exitus

```
9
1
```

## Commentarii

1. Vinculum cum `:=` copiam non facit. Facit `$bound` aliud nomen pro eodem continenti ac `$source`. Itaque mutatio `$source` per `$bound` visibilis est, quod `9` imprimit.

1. Assignatio normalis cum `=` valorem in continentem separatum copiat. Itaque mutatio posterior `$copy` non afficit, et adhuc `1` imprimit.

1. Totum propositum est ambos iuxta videre. `:=` continentem communicat, dum `=` copiam valoris facit.

{% include nav.html %}
