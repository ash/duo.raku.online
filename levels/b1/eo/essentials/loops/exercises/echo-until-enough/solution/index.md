---
title: 'Solvo: Eĥo ĝis sufiĉas'
---

{% include menu.html %}

Ĉi tiu programo bezonas buklon, kiu haltas, kiam la uzanto enigas certan vorton.

## Kodo

Estas pluraj similaj manieroj solvi la taskon per `while`, `until` aŭ `repeat`. Unu el ili estas montrita sube.

```raku
my $vorto;
repeat {
    $vorto = prompt 'Via vorto: ';
    say $vorto;
} while $vorto ne 'sufiĉe';

say 'OK, finita.';
```

🦋 Trovu la programon en la dosiero [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Eligo

Rulu la programon, enigu kelkajn malsamajn vortojn, kaj poste haltigu la buklon.

```console
$ raku exercises/loops/echo-until-enough.raku
Via vorto: ĉi
ĉi
Via vorto: estas
estas
Via vorto: mia
mia
Via vorto: vorto
vorto
Via vorto: sufiĉe
sufiĉe
OK, finita.
```

## Komento

Notu, ke vi deklaras la variablon `$vorto` _antaŭ_ la buklo, ĉar la `while` testo estas ekster la amplekso de la korpo de la buklo. Se vi difinas la variablon ene de la buklo, la testo ne vidos ĝin.

{% include nav.html %}
