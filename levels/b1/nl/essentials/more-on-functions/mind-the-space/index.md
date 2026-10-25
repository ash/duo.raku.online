---
title: Let op de spatie
---

{% include menu.html %}

In Raku is het gebruik van functies meestal makkelijk en geeft het geen problemen. Maar we moeten je voor één ding waarschuwen.

## TL;DR

Zet geen spatie tussen de naam van de functie en de haakjes met de argumenten. Maar gebruik wel een spatie na `for` en `if`.

## Lang verhaal

Laten we een eenvoudige functie nemen:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Let eerst op dat er geen spatie na de naam van de functie staat. Het openingshaakje met de parameters komt direct na de naam. Sommige codestijlen in andere talen vragen daar om een spatie. Raku accepteert dat, maar het is geen goede gewoonte om te volgen:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Als je de functie aanroept, is de ontbrekende spatie belangrijk. Als je de functie zonder haakjes aanroept, moet er een spatie na de naam staan:

```raku
f 5, 6;
```

Maar als je haakjes gebruikt, mag er geen spatie voor staan. Deze aanroep is correct:

```raku
f(5, 6);
```

En deze aanroep is fout:

```raku
f (5, 6);
```

Dergelijke code veroorzaakt een uitzondering:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Raku ziet de aanroep met een spatie, `f (5, 6)`, op een andere manier. Raku denkt dat je één argument, `(5, 6)`, aan de functie wilt doorgeven. Het is makkelijk om het type van dit argument te controleren. Verander de functie gewoon zodat die maar één argument aanneemt:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Dus als je `f (5, 6)` aanroept, geef je een [lijst](/nl/essentials/positionals/lists) aan de functie door. De lijst wordt als één geheel doorgegeven.

## Wanneer spatie nodig is

In sommige gevallen heb je wel een spatie nodig. Dat gebeurt als je haakjes gebruikt met een sleutelwoord zoals `if`, `for` of `loop`. De volgende code is fout:

```raku
if(True != False) {
    say 'OK';
}
```

Het foutbericht legt het probleem uit:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Bij `if` heb je helemaal geen haakjes nodig. Dus als je ze niet gebruikt, kan het probleem niet ontstaan. Maar in sommige gevallen heb je ze wel nodig, bijvoorbeeld bij `loop`. Dan is de spatie verplicht:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

In deze code gebeurt hetzelfde: de compiler ziet `loop(...)` als een functieaanroep. Voeg een spatie toe om het probleem op te lossen. Of, nog beter, herschrijf dit deel van de code met `for`.

## Conclusie

Kortom, volg twee regels om zulke problemen te voorkomen. Zet geen spatie tussen de naam van de functie en de haakjes met de argumenten. Probeer ook haakjes te vermijden in andere delen van de taal, zoals bij controleflow.

{% include nav.html %}
