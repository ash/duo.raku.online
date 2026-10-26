---
title: 'Risinājums: Atkārtot katru skaitli'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Atrodiet programmu failā [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Izvade

```
[1 2 2 3 3 3 4 4 4 4]
```

## Komentāri

1. Nekur nav teikts, ka katrā piegājienā jābūt tikai vienam `take`. Šeit iekšējais `take $n for 1..$n` katrā piegājienā izpilda `take` atšķirīgu reižu skaitu. Tieši šī elastība padara `gather`/`take` jaudīgāku par vienkāršu `map`.

1. Ārējais cikls ar nolūku izmanto nosauktu mainīgo, `-> $n`. Pieņemsim, ka mēs iekšējā ciklā izmantotu `$_`. Tad iekšējais `for` ieliktu `$_` savu skaitītāju. Tāpēc mēs paņemtu skaitītāju, nevis pašreizējo skaitli.

1. `gather` vienkārši savāc katru paņemto vērtību secībā. Tāpēc `@result` satur `1`, tad divus `2`, tad trīs `3`, tad četrus `4`.

{% include nav.html %}
