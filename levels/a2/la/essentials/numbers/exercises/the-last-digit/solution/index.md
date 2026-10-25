---
title: 'Solutio: Ultima cifra'
---

{% include menu.html %}

Haec est idea solutionis. Divisione modulo per 10 utere. Ultimum digitum numeri dat.

## Codex

Hic est solutio:

```raku
my $n = prompt 'Enter a number: ';
my $d = $n % 10;
say "The last digit of $n is $d.";
```

🦋 Inveni codicem fontem in archivo [the-last-digit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/the-last-digit.raku).

## Exitus

Curre programmatum et intra numerum positivum integrum:

```console
$ raku exercises/numbers/the-last-digit.raku
Enter a number: 1234
The last digit of 1234 is 4.
```

## Commentarium

Cave cum numeris negativis. Hic eventus non est quod exspectas. Exempli gratia, `-11 % 10` est `9`, non `1`.

{% include nav.html %}
