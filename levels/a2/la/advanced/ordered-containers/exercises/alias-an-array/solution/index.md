---
title: 'Solutio: Alias pro array'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Inveni codicem fontem in archivo [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Exitus

```
[10 20 30 40]
```

## Commentarii

1. Specta vinculum `@alias := @original`. Facit `@alias` secundum nomen pro eodem continenti ordinis. Ordinem non copiat.

1. Hac vice programma ordinem per `@original` mutat. Structuram mutat: `push` elementum addit. Ambo nomina ad eundem ipsum continentem pertinent. Itaque `@alias` quoque novum elementum videt. Duo nomina eodem prorsus modo operantur. Ordinem utroque nomine legere vel mutare potes.

{% include nav.html %}
