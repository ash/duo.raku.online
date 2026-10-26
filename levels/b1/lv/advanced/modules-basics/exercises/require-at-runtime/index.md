---
title: Ielādēt izpildes laikā
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Jums ir modulis `Greeting.rakumod`, kas eksportē apakšprogrammu `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Ielādējiet šo moduli ar `require`, nevis `use`. Tad tas tiek ielādēts **izpildes laikā**. `require` nosaukumus automātiski neimportē. Tāpēc jums jāuzskaita vajadzīgais simbols ar `require Greeting <&hello>;`. Pēc tam izsauciet `hello('Sam')` un izdrukājiet rezultātu.

Šis uzdevums arī parāda, kam noder ielāde izpildes laikā. Ielieciet `require` iekšpus `sub MAIN` ar karodziņu `--quiet`. Tad modulis tiek ielādēts *tikai* tad, kad sveiciens tiešām vajadzīgs. Ar `--quiet` programma izdrukā `Silence.` un moduli neaiztiek nemaz.

## Piemērs

Ja to palaižat ar moduli uz meklēšanas ceļa, programma izdrukā:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
