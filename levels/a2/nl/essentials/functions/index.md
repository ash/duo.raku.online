---
title: Functies maken en aanroepen
---

{% include menu.html %}

Het eerste deel van de cursus eindigt met deze sectie. Daarna kun je bijna _elk_ programma in Raku schrijven. Deze sectie gaat over _functies_. Functies hebben ook andere namen: _subroutines_, of gewoon _routines_.

Een functie is een stuk code met een eigen naam. Je kunt een functie vaak gebruiken. Om een functie te gebruiken, moet je de functie _aanroepen_. Je kunt de functie aanroepen vanuit verschillende plaatsen in het programma.

## Een functie maken

Om een functie te maken, schrijf je het sleutelwoord `sub`. Schrijf daarna de naam van de functie. Zet het lichaam van de functie tussen accolades.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Een functie gebruiken

Om de functie te gebruiken, schrijf je gewoon de naam. Schrijf de naam waar je de functie wilt aanroepen. In Raku kun je de functie vóór deze plaats maken. Je kunt de functie ook na deze plaats maken.

```raku
say 'Dit is wat het eerste programma meestal afdrukt:';
greet;    

sub greet {
    say 'Hello, World!';
}
```

Het programma drukt beide berichten af:

```console
$ raku t.raku
Dit is wat het eerste programma meestal afdrukt:
Hello, World!
```

Nu kijken we verder naar het maken en gebruiken van functies.

{% include nav.html %}
