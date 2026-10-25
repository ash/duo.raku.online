---
title: Het resultaat teruggeven
---

{% include menu.html %}

Functies doen vaak iets en geven ook een resultaat terug. In functionele programmering horen functies bijvoorbeeld geen bijwerkingen te hebben. Printen naar de console is zo'n bijwerking. Maar Raku houdt je niet tegen als je dat wilt doen. Laten we kijken hoe een functie een waarde teruggeeft. We zien ook hoe de aanroepende code die waarde krijgt.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Hier krijgt de functie `add` twee getallen en geeft hun som terug. De functie gebruikt een expliciete `return`. De aanroepende code kan de teruggegeven waarde gebruiken zoals elke andere waarde. In het programma hierboven wordt die waarde aan een variabele toegewezen.

## De laatst berekende waarde

In Raku is een expliciete `return` niet altijd nodig. Je mag die weglaten als het resultaat de laatste waarde is die de functie berekent. Onze functie `add` kan dus eenvoudiger:

```raku
sub add($x, $y) {
    $x + $y
}
```

Misschien heb je gezien dat de regel geen puntkomma aan het einde heeft. Die is niet nodig, omdat deze regel het codeblok afsluit.

Kleine en eenvoudige functies zoals deze worden vaak op één regel geschreven. Zo wordt de code compacter:

```raku
sub add($x, $y) { $x + $y }
```

## Geen retourgegevens

Soms moet je uit een functie terugkeren voordat het einde van het lichaam bereikt is. Als de functie geen resultaat teruggeeft, gebruik dan alleen `return`.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is boven de limiet";
}
```

{% include nav.html %}
