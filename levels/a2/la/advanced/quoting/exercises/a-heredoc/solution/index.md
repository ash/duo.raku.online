---
title: 'Solutio: Heredoc'
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Heredoc cum `qq:to` incipit, non cum `q:to`. Itaque interpolat. Sicut series `qq` operatur. Scalares `$name`, `$count`, et `$item` implet. *Etiam* codicem intra textum exsequitur. Claustrum `{$count * $price}` computat `3 * 25`. Itaque summa `75` in textu apparet.

1. Specta apostrophos duplices in `"$item"`. Hic solum characteres normales sunt. In heredoc apostrophi delimitatores non sunt. Itaque nullum obliquum reversum requirunt. Raku apostrophos ut sunt imprimit. Sed `$item` tamen interpolat.

1. Corpus et `END` claudens ambo quattuor spatia ante se habent. Raku indentationem terminatoris ab omni linea removet. Itaque haec quattuor spatia numquam in seriem veniunt. Eventus a margine sinistro incipit.

1. Heredoc iam cum fine lineae desinit. Itaque programma `print` adhibet, non `say`. `say` alium finem lineae addit. Sic alia linea vacua apparet.

{% include nav.html %}
