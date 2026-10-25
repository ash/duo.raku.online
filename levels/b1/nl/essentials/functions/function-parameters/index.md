---
title: Functieparameters
---

{% include menu.html %}

Nu is het tijd om wat gegevens aan een functie door te geven. Een functie kan parameters aannemen, die je tussen haakjes direct na de naam zet.

```raku
sub greet($name) {
    say "Hallo, $name!";
}
```

Nu kun je de functie gebruiken en er verschillende argumenten aan doorgeven:

```raku
greet('Alla');
greet('Karl');
```

Nu geven de twee aanroepen van dezelfde functie verschillende resultaten:

```console
$ raku t.raku
Hallo, Alla!
Hallo, Karl!
```

%%tipblock

## Parameter of argument

Mensen gebruiken deze twee termen vaak alsof ze hetzelfde betekenen. Beide verwijzen naar ‘hetzelfde ding’, maar vanuit verschillende gezichtspunten.

* Een parameter is wat de functie verwacht.
* Een argument is wat je eraan doorgeeft.

In het voorbeeld hierboven is `$name` de parameter van de functie. De argumenten zijn `'Alla'` en `'Karl'`.

%%/tipblock

## Meer parameters

Een functie kan meer dan één parameter aannemen. Zet ze in dat geval allemaal op een rij, met komma's ertussen:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Geen parameters

Het is prima als een functie helemaal geen parameters aanneemt. Dan kun je een leeg paar haakjes toevoegen of de haakjes helemaal weglaten. We lieten ze weg aan [het begin van deze sectie](../).

```raku
sub greet() {
    say 'Hallo, Wereld!';
}

greet();
```

## Handtekening

De lijst van parameters van een functie wordt een _handtekening_ genoemd.

{% include nav.html %}
