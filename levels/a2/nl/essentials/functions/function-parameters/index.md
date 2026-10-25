---
title: Functieparameters
---

{% include menu.html %}

Nu geven we wat gegevens door aan een functie. Een functie kan parameters aannemen. Schrijf ze tussen haakjes, direct na de naam van de functie.

```raku
sub greet($name) {
    say "Hallo, $name!";
}
```

Nu kun je de functie gebruiken. Je kunt er verschillende argumenten aan doorgeven:

```raku
greet('Alla');
greet('Karl');
```

We roepen dezelfde functie twee keer aan. Nu zijn de resultaten verschillend:

```console
$ raku t.raku
Hallo, Alla!
Hallo, Karl!
```

%%tipblock

## Parameter of argument

Mensen gebruiken deze twee woorden vaak op dezelfde manier. Beide woorden gaan over ‘hetzelfde ding’. Maar ze bekijken het van verschillende kanten.

* Een parameter is wat de functie verwacht te krijgen.
* Een argument is wat je aan de functie doorgeeft.

In het voorbeeld hierboven is `$name` de parameter van de functie. `'Alla'` en `'Karl'` zijn de argumenten.

%%/tipblock

## Meer parameters

Een functie kan meer dan één parameter aannemen. Zet dan komma's tussen de parameters:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Geen parameters

Een functie kan ook helemaal geen parameters hebben. Dan kun je een leeg paar haakjes schrijven. Of je kunt de haakjes weglaten. Dat deden we aan [het begin van deze sectie](../).

```raku
sub greet() {
    say 'Hallo, Wereld!';
}

greet();
```

## Handtekening

De lijst met parameters is de _handtekening_ van een functie.

{% include nav.html %}
