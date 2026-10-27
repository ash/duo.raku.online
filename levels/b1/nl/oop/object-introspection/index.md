---
title: Objecten introspecteren
translations_gpt:
---

{% include menu.html %}

In de [sectie over containers](/nl/advanced/containers) gebruikte je `.^name` om een waarde naar haar type te vragen. Met dezelfde meta-aanroepen met `.^` kun je in een klasse en haar objecten kijken. Je kunt hun namen, hun attributen en hun plaats in een klassenhiërarchie zien.

De metamethode `.^name` geeft de naam van de klasse terug:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

De metamethode `.^attributes` somt de attributen van de klasse op. Je ziet elk attribuut met zijn type en zijn interne private naam. Dat is de `$!`-vorm die je bij [private attributen](/nl/oop/methods/private-attributes) tegenkwam:

```raku
say Dog.^attributes; # (Str $!name)
```

Introspectie is nuttig voor tools die met elke soort object werken. Zo'n tool kan bijvoorbeeld elk attribuut van een object afdrukken. Hij hoeft de klasse niet eerst te kennen. Het volgende onderwerp laat zien hoe je de overervingsketen van een klasse kunt zien.

{% include nav.html %}
