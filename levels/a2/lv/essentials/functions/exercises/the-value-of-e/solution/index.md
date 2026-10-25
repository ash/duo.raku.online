---
title: 'Risinājums: e vērtība'
---

{% include menu.html %}

## Atruna

Raku valodā jau ir konstante `e`. Tā uzreiz dod atbildi uz šo uzdevumu. Zemāk dotais risinājums ir tikai mācībām.

## Kods

Formulā ir faktoriāls. Mēs jau zinām vismaz divus veidus, kā atrast faktoriālu. Vēlāk būs vēl citi veidi. Zemāk dotajā programmā ir divas funkcijas. Viena funkcija atrod faktoriālu. Otra saskaita formulas pirmos elementus.

Funkcijai jādarbojas arī bez argumentiem. Tad cikls izpildās noteiktu reižu skaitu. Tāpēc mēs dodam parametram [noklusējuma vērtību](/lv/essentials/functions/default-values): `sub e-approx($max = 100)`.

Apskatiet kodu. Abas funkcijas veido savu rezultātu līdzīgā veidā. Katrā no tām ir [`for` rindas beigās](/lv/essentials/loops/postfix-for). Šis cikls iet cauri [diapazonam](/lv/essentials/ranges).

Šeit ir risinājums:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Atrodiet programmu failā [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Izvade

Lūk, rezultāti 10 un 100 cikla atkārtojumiem. Izmēģiniet arī citas `$max` vērtības.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
