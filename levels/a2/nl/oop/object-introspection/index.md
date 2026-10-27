---
title: Objecten introspecteren
translations_gpt:
---

{% include menu.html %}

In de [sectie over containers](/nl/advanced/containers) gebruikte je `.^name`. Daarmee vroeg je een waarde naar haar type. Dezelfde meta-aanroepen met `.^` werken ook met klassen en objecten. Daarmee kun je hun namen en hun attributen zien. Je kunt ook hun plaats in de boom van klassen zien.

Een metamethode is een methode die je aanroept met `.^`. De metamethode `.^name` geeft de naam van de klasse terug:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

De metamethode `.^attributes` geeft een lijst van de attributen van de klasse. Bij elk attribuut zie je zijn type. Je ziet ook zijn interne private naam. Dat is de vorm met `$!`. Je zag die bij [private attributen](/nl/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspectie betekent dat je een object vraagt naar zichzelf. Het is nuttig voor tools die met elke soort object werken. Een tool kan bijvoorbeeld elk attribuut van een object afdrukken. De tool hoeft de klasse van het object niet eerst te kennen. Het volgende onderwerp gaat over de overervingsketen van een klasse. Dat is de lijn van haar ouderklassen.

{% include nav.html %}
