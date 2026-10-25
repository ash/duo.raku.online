---
title: 'Risinājums: Frakcionālā daļa'
---

{% include menu.html %}

Lai iegūtu skaitļa daļskaitļa daļu, atņemiet no skaitļa tā veselo daļu. Veselo daļu jūs varat iegūt, pārveidojot skaitli par `Int`.

## Kods

Zemāk ir parādīts iespējams risinājums:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Atrodiet programmu failā [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Izvade

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Komentārs

Izmēģiniet to pašu programmu arī ar negatīviem skaitļiem, piemēram:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Šajā gadījumā rezultātam arī jābūt pareizam:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
