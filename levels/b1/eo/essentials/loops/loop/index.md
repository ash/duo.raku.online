---
title: 'Trideklaro `loop`'
---

{% include menu.html %}

La `loop` deklaro en Raku havas multon komunan kun la tradiciaj bukloj de la programlingvo C kaj ĝiaj parencoj. Ĝi prenas tri deklarojn: la inicialigilon, la teston kaj la deklaron, kiu ŝanĝas la buklan variablon. La korpo de la buklo ruliĝas denove kaj denove, dum la testo restas `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "La nuna valoro de la kalkulilo estas $c.";
}
```

Ĉi tie, `++` estas postfiksa operatoro, kiu pliigas sian argumenton je 1. Ni rigardos pli da operatoroj en la dua parto de la kurso.

La programo rulas la korpon de la buklo kvin fojojn.

```console
$ raku t.raku
La nuna valoro de la kalkulilo estas 0.
La nuna valoro de la kalkulilo estas 1.
La nuna valoro de la kalkulilo estas 2.
La nuna valoro de la kalkulilo estas 3.
La nuna valoro de la kalkulilo estas 4.
```

Iuj, aŭ eĉ ĉiuj, el la deklaroj en la kapo de `loop` povas esti preterlasitaj. Ekzemple, jen la sama programo:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "La nuna valoro de la kalkulilo estas $c.";
    $c++;
}
```

## * * *

La `loop` bukloj estas probable la malplej uzataj bukloj en Raku. Vi povas trovi ilin, ekzemple, en kodo, kiun ilo aŭtomate tradukis de C al Raku. Sed Raku havas pli oportunajn buklojn, kiel `for`, kiun ni rigardos tre baldaŭ.

{% include nav.html %}
