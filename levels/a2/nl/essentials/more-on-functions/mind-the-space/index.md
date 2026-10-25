---
title: Let op de spatie
---

{% include menu.html %}

Functies in Raku zijn meestal makkelijk te gebruiken. Ze geven bijna nooit problemen. Maar let op één ding.

## TL;DR

Zet geen spatie tussen de naam van de functie en de haakjes. Tussen de haakjes staan de argumenten. Maar zet wel een spatie na `for` en `if`.

## Lang verhaal

Hier is een eenvoudige functie:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Kijk eerst naar de naam van de functie. Het openingshaakje komt direct na de naam, zonder spatie. De parameters staan tussen deze haakjes. Sommige codestijlen in andere talen willen daar een spatie. Raku accepteert dat ook. Maar zo schrijf je geen goede code:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

In een functieaanroep is de ontbrekende spatie belangrijk. Soms roep je een functie aan zonder haakjes. Dan moet je een spatie na de naam van de functie zetten:

```raku
f 5, 6;
```

Maar met haakjes mag er geen spatie voor de haakjes staan. Deze aanroep is goed:

```raku
f(5, 6);
```

En deze aanroep is fout:

```raku
f (5, 6);
```

Deze code geeft een uitzondering:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Kijk naar de aanroep met een spatie: `f (5, 6)`. Raku denkt dat je één argument aan de functie doorgeeft. Dit argument is `(5, 6)`. Je kunt het type van dit argument makkelijk controleren. Verander de functie. De functie moet maar één argument aannemen:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

De aanroep `f (5, 6)` geeft dus een [lijst](/nl/essentials/positionals/lists) aan de functie door. De hele lijst is één argument.

## Wanneer je een spatie nodig hebt

Soms heb je een spatie nodig. Dat gebeurt als je haakjes na een sleutelwoord gebruikt. Het sleutelwoord kan bijvoorbeeld `if`, `for` of `loop` zijn. Deze code is fout:

```raku
if(True != False) {
    say 'OK';
}
```

Het foutbericht zegt wat er mis is:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Bij `if` heb je helemaal geen haakjes nodig. Zonder haakjes kan dit probleem niet gebeuren. Maar soms heb je wel haakjes nodig, bijvoorbeeld bij `loop`. Dan moet je een spatie zetten:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

In deze code gebeurt hetzelfde. De compiler denkt dat `loop(...)` een functieaanroep is. Voeg een spatie toe om het probleem op te lossen. Of, nog beter, schrijf deze code met `for`.

## Conclusie

Dit is dus het belangrijkste punt. Zet geen spatie tussen de naam van een functie en de haakjes. Dan voorkom je zulke problemen. Probeer ook op andere plaatsen geen haakjes te gebruiken als dat kan. Je hebt ze bijvoorbeeld niet nodig bij `if` en `for`.

{% include nav.html %}
