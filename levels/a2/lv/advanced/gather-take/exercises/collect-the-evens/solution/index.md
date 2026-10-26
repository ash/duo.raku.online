---
title: 'Risinājums: Atkārtot katru skaitli'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Katrā kārtā nav jābūt tieši vienam `take`. Paskatieties šeit uz iekšējo `take $n for 1..$n`. Tas katrā kārtā izpilda `take` citu reižu skaitu. Šī brīvība padara `gather`/`take` spēcīgāku par vienkāršu `map`.

1. Ārējam ciklam ir mainīgais ar nosaukumu, `-> $n`. Tas ir ar nolūku. Iedomājieties, ka mēs iekšējā ciklā izmantojam `$_`. Tad iekšējais `for` ieliek `$_` savu skaitītāju. Tāpēc mēs paņemam skaitītāju, nevis pašreizējo skaitli.

1. `gather` vienkārši savāc secībā katru vērtību, ko kods paņem. Tāpēc mainīgajā `@result` ir viens `1`, divi `2`, trīs `3` un četri `4`.

{% include nav.html %}
