---
title: 'Solutio: Alias pro array'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

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

1. Vinculum `@alias := @original` ordinem non copiat. Facit `@alias` aliud nomen pro eodem continenti ordinis.

1. Hac vice mutatio per `@original` it, et structuram mutat: `push` elementum addit. Ambo nomina sunt idem ipse continens, itaque `@alias` quoque novum elementum videt. Semper unum nomen pro altero adhibere potes. Non refert quo nomine ordinem legas vel mutes.

{% include nav.html %}
