---
title: 'Solutio: Nuntius finalis'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Inveni codicem fontem in archivo [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Exitus

```
processed 3 items
```

## Commentarii

1. Phaser `END` ante ansam scriptus est, sed ultimus currit. Currit cum codex principalis finitus est. Eo tempore `$count` iam ter auctus est.

1. Phaser super `$count` clauditur, id est vinculum cum variabili tenet. Ergo valorem *finalem* legit. Non legit `0` ex linea ubi phaser apparet. Haec est ratio usitata cur summarium in `END` ponatur.

{% include nav.html %}
