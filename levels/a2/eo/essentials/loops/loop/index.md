---
title: 'Trideklaro `loop`'
---

{% include menu.html %}

Raku havas la deklaron `loop`. Ĝi funkcias kiel la bukloj en C kaj similaj lingvoj. Ĝi havas tri deklarojn. La unua donas al la bukla variablo ĝian komencan valoron. La dua estas testo. La tria ŝanĝas la buklan variablon. La buklo ruliĝas, dum la testo estas `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "La nuna valoro de la kalkulilo estas $c.";
}
```

Ĉi tie, `++` estas operatoro. Vi skribas ĝin post variablo. Ĝi aldonas 1 al la variablo. La dua parto de la kurso havas pli da operatoroj.

La korpo de la buklo ruliĝas kvin fojojn.

```console
$ raku t.raku
La nuna valoro de la kalkulilo estas 0.
La nuna valoro de la kalkulilo estas 1.
La nuna valoro de la kalkulilo estas 2.
La nuna valoro de la kalkulilo estas 3.
La nuna valoro de la kalkulilo estas 4.
```

Vi povas forlasi kelkajn el la tri deklaroj en `loop`. Vi eĉ povas forlasi ĉiujn. Ekzemple, jen la sama programo:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "La nuna valoro de la kalkulilo estas $c.";
    $c++;
}
```

## * * *

En Raku, homoj ne tre ofte uzas `loop`. Foje ilo ŝanĝas C-kodon en Raku-kodon. Vi povas vidi `loop` en tia kodo. Raku havas pli facilajn buklojn, kiel `for`. Ni rigardas `for` tre baldaŭ.

{% include nav.html %}
