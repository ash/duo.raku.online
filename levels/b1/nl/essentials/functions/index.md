---
title: Functies maken en aanroepen
---

{% include menu.html %}

Je bent nu in de laatste sectie van het eerste deel van de cursus. Daarna weet je genoeg om bijna _elk_ programma in Raku te schrijven. Het onderwerp van deze sectie is _functies_. Ze heten ook _subroutines_, of gewoon _routines_.

Een functie is een stuk code met een naam, dat je vaak kunt gebruiken. Je kunt een functie vanuit verschillende plaatsen in het programma _aanroepen_.

## Een functie maken

Om een functie te maken, schrijf je het sleutelwoord `sub` en daarna de naam van de functie. Het lichaam van de functie staat tussen een paar accolades.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Een functie gebruiken

Om de functie te gebruiken, schrijf je gewoon de naam op de plaats waar je de functie wilt aanroepen. In Raku kan de definitie van de functie vóór of na de aanroep staan.

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

Nu gaan we kijken naar meer details over het maken en gebruiken van functies.

{% include nav.html %}
