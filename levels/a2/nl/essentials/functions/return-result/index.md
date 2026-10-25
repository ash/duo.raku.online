---
title: Het resultaat teruggeven
---

{% include menu.html %}

Een functie doet vaak iets en geeft ook een resultaat terug. In functionele programmering mogen functies bijvoorbeeld geen bijwerkingen hebben. Printen naar de console is zo'n bijwerking. Maar Raku staat dit wel toe. Laten we kijken hoe een functie een waarde teruggeeft. We zien ook hoe de aanroepende code deze waarde krijgt.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Hier krijgt de functie `add` twee getallen. De functie geeft hun som terug. In de code van de functie staat het woord `return`. De aanroepende code kan deze waarde gebruiken zoals elke andere waarde. In het programma hierboven wijzen we de waarde toe aan een variabele.

## De laatste waarde

Het resultaat kan de laatste waarde in het lichaam van de functie zijn. Dan hoef je in Raku geen `return` te schrijven. Dus kunnen we onze functie `add` eenvoudiger maken:

```raku
sub add($x, $y) {
    $x + $y
}
```

Let op: de regel heeft geen puntkomma aan het einde. De regel is de laatste in het codeblok. Daarom is daar geen puntkomma nodig.

Kleine en simpele functies zoals deze schrijf je vaak op één regel. Dan is de code korter:

```raku
sub add($x, $y) { $x + $y }
```

## Geen gegevens om terug te geven

Soms moet een functie al voor het einde van het lichaam terugkeren. Als de functie geen resultaat teruggeeft, gebruik dan `return` zonder waarde.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is boven de limiet";
}
```

{% include nav.html %}
