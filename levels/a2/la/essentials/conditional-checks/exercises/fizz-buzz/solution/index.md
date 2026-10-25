---
title: 'Solutio: FizzBuzz'
---

{% include menu.html %}

Hoc est munus classicum in colloquiis de opere. Unam rem probat. De casu cogitas ubi ambae condiciones `True` sunt? Interdum numerus et per 3 et per 5 sine residuo dividitur. Tum programma `FizzBuzz` imprimere debet.

## Codex

Hic est solutio:

```raku
my $n = prompt 'Numerum intra: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Inveni codicem fontem in archivo [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Exemplum

Proba programma cum paucis generibus numerorum:

* Numeri qui per 3 dividuntur, exempli gratia: 3, 6, 9, 12.
* Numeri qui per 5 dividuntur, exempli gratia: 5, 10, 15, 20.
* Numeri qui et per 3 et per 5 dividuntur, exempli gratia: 15, 30, 45.
* Numeri qui neque per 3 neque per 5 dividuntur, exempli gratia: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Numerum intra: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Numerum intra: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Numerum intra: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Numerum intra: 30
FizzBuzz
```

{% include nav.html %}
