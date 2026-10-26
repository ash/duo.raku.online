---
title: 'Solutio: Nuntius finalis'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Phaser `END` in codice ante ansam venit. Sed ultimus currit, post codicem principalem. Tunc ansa iam ter 1 ad `$count` addidit.

1. Phaser vinculum cum variabili `$count` tenet. Ergo valorem *finalem* variabilis legit. Non legit `0` ex linea phaseris. Ob hanc causam summarium saepe in `END` ponimus.

{% include nav.html %}
