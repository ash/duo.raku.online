---
title: Functiesignaturen dumpen
translations_gpt: Functiesignaturen dumpen
---

{% include menu.html %}

Soms roep je `dd` zonder argumenten aan binnen een subroutine. Dan toont `dd` de signatuur van de subroutine. Dat is de naam en de parameters, als die er zijn. Kijk naar dit voorbeeld met twee subroutines:

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

Het programma toont de signaturen. Het toont geen waarden:

```console
sub f1()
sub f2($x)
```

Dit is heel handig bij multi-functies. Dat zijn meerdere functies met dezelfde naam. Hier zegt `dd` welke variant het programma echt aanroept:

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

Elke keer noemt de uitvoer de variant die past:

```console
sub g()
sub g($x)
```

{% include nav.html %}
