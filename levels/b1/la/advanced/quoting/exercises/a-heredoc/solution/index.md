---
title: 'Solutio: Heredoc'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Inveni codicem fontem in archivo [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Exitus

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Commentarii

1. Heredoc cum `qq:to` incipit, non cum `q:to`, itaque interpolat. Sicut series `qq`, scalares `$name`, `$count` et `$item` implet. *Etiam* codicem intra textum exsequitur: claustrum `{$count * $price}` computat `3 * 25`. Itaque summa, `75`, directe in textu apparet.

1. Apostrophi duplices circa `"$item"` hic solum characteres normales sunt. Intra heredoc nullus delimitator est quem effugere debes. Itaque apostrophi ut scripti sunt imprimuntur, dum `$item` tamen interpolatur.

1. Corpus et `END` claudens eandem indentationem quattuor spatiorum habent. Indentatio terminatoris ab omni linea removetur. Itaque illa quattuor spatia numquam in seriem perveniunt. Eventus a margine sinistro incipit.

1. Heredoc iam cum fine lineae desinit. Itaque codex `print` adhibet, non `say`. Cum `say` alterum finem lineae et lineam vacuam additam acciperes.

{% include nav.html %}
