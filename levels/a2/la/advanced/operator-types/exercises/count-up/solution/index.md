---
title: 'Solutio: Sursum numerare'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `++` est operator postfixus. Post operandum suum venit. In expressione `$n++` primum *veterem* valorem dat, `9`. Hoc est quod `say` imprimit. Tum demum `++` ad variabilem 1 addit.

1. Secunda linea ostendit: `$n` nunc est `10`. Forma praefixa `++$n` alio modo operatur. Primum 1 addit, deinde `10` reddit.

{% include nav.html %}
