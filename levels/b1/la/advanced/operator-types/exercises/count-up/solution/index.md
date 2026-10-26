---
title: 'Solutio: Sursum numerare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 Inveni codicem fontem in archivo [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Exitus

```
9
10
```

## Commentarii

1. `++` est operator postfixus, id est post operandum suum venit. In expressione `$n++` primum *veterem* valorem `9` dat. Hoc est quod `say` imprimit. Tum demum variabilem auget.

1. Secunda linea ostendit `$n` revera `10` factum esse. Forma praefixa `++$n` primum unum adderet et deinde `10` redderet.

{% include nav.html %}
