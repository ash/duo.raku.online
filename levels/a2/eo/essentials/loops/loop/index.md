---
title: 'Trideklaro `loop`'
---

{% include menu.html %}

La `loop` deklaro en Raku estas kiel la klasikaj bukloj en la lingvo C kaj similaj lingvoj. Ĝi prenas tri deklarojn. La unua donas la komencan valoron. La dua estas la testo. La tria ŝanĝas la buklan variablon. La korpo de la buklo ruliĝas denove kaj denove, dum la testo estas `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "La nuna valoro de la kalkulilo estas $c.";
}
```

Ĉi tie, `++` estas operatoro post variablo. Ĝi aldonas 1 al la variablo. Vi lernos pli da operatoroj en la dua parto de la kurso.

La programo rulas la korpon de la buklo kvin fojojn.

```console
$ raku t.raku
La nuna valoro de la kalkulilo estas 0.
La nuna valoro de la kalkulilo estas 1.
La nuna valoro de la kalkulilo estas 2.
La nuna valoro de la kalkulilo estas 3.
La nuna valoro de la kalkulilo estas 4.
```

Vi povas forlasi kelkajn aŭ eĉ ĉiujn deklarojn en la kapo de `loop`. Ekzemple, jen la sama programo:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "La nuna valoro de la kalkulilo estas $c.";
    $c++;
}
```

## * * *

Homoj ne tre ofte uzas `loop` en Raku. Vi povas vidi ĝin, ekzemple, en programoj, kiujn ilo tradukis de C al Raku. Raku havas pli facilajn buklojn, kiel `for`. Ni rigardos `for` tre baldaŭ.

{% include nav.html %}
