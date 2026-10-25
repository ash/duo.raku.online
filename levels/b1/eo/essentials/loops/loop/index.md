---
title: 'Trideklaro `loop`'
---

{% include menu.html %}

La `loop` deklaro en Raku tre similas al la tradiciaj bukloj en C kaj similaj lingvoj. Ĝi prenas tri deklarojn. La unua donas komencan valoron, kaj la dua estas la testo. La tria ŝanĝas la buklan variablon. La korpo de la buklo ruliĝas denove kaj denove, dum la testo estas `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "La nuna valoro de la kalkulilo estas $c.";
}
```

Ĉi tie, `++` estas postfiksa operatoro, kio signifas, ke ĝi venas post sia argumento. Ĝi aldonas 1 al la argumento. Estas pli da operatoroj en la dua parto de la kurso.

La programo rulas la korpon de la buklo kvin fojojn.

```console
$ raku t.raku
La nuna valoro de la kalkulilo estas 0.
La nuna valoro de la kalkulilo estas 1.
La nuna valoro de la kalkulilo estas 2.
La nuna valoro de la kalkulilo estas 3.
La nuna valoro de la kalkulilo estas 4.
```

Kelkaj el la deklaroj en la kapo de `loop`, aŭ eĉ ĉiuj, estas nedevigaj. Ekzemple, jen la sama programo:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "La nuna valoro de la kalkulilo estas $c.";
    $c++;
}
```

## * * *

Raku-programistoj verŝajne uzas `loop` malpli ofte ol ĉiujn aliajn buklojn. Vi povas trovi ĝin, ekzemple, en kodo, kiun ilo tradukis de C al Raku. Sed Raku havas pli oportunajn buklojn, kiel `for`. Ni rigardos ĝin tre baldaŭ.

{% include nav.html %}
