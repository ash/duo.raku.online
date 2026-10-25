---
title: 'Solvo: Eĥo ĝis sufiĉas'
---

{% include menu.html %}

Ĉi tiu programo bezonas buklon. La buklo haltas, kiam la uzanto enigas specialan vorton.

## Kodo

Vi povas solvi la taskon per `while`, `until` aŭ `repeat`. Ĉi tiuj manieroj estas tre similaj. Jen unu el ili.

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

Rulu la programon. Enigu kelkajn malsamajn vortojn. Poste haltigu la buklon.

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

Notu, ke vi kreas la variablon `$vorto` _antaŭ_ la buklo. La `while` testo ne estas en la korpo de la buklo. Do la testo ne povas vidi variablon el la korpo de la buklo.

{% include nav.html %}
