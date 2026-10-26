---
title: Functiesignaturen dumpen
translations_gpt: Functiesignaturen dumpen
---

{% include menu.html %}

Je kunt een kale `dd` aanroepen, zonder argumenten, binnen een subroutine. Dan toont hij de signatuur van die subroutine. Dat is de naam en de lijst van parameters, als die er zijn. Bekijk het volgende voorbeeld met twee subroutines:

```raku
sub f1 {
    dd
}

f1();

sub f2($x) {
    dd
}

f2(42);
```

Het programma toont de signaturen, geen waarden:

```console
sub f1()
sub f2($x)
```

Dit is vooral handig bij multi-functies, omdat het laat zien welke variant echt werd aangeroepen:

```raku
multi sub g {
    dd
}

multi sub g($x) {
    dd
}

g();
g(42);
```

Elke keer toont de uitvoer de passende variant:

```console
sub g()
sub g($x)
```

{% include nav.html %}
