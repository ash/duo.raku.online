---
title: 'Risinājums: Frakcionālā daļa'
---

{% include menu.html %}

Kā iegūt skaitļa daļskaitļa daļu? Atņemiet no skaitļa tā veselo daļu. Lai iegūtu veselo daļu, pārveidojiet skaitli par `Int`.

## Kods

Šeit ir viens risinājums:

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

Izmēģiniet programmu arī ar negatīviem skaitļiem. Piemēram:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Arī šeit rezultāts ir pareizs:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
