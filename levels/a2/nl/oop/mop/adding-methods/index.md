---
title: Methoden toevoegen tijdens het draaien
translations_gpt:
---

{% include menu.html %}

Het MOP is niet alleen om in typen te kijken. Het kan een type ook **veranderen** terwijl het programma draait. De metamethode `.^add_method` voegt een nieuwe methode aan een klasse toe:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

De klasse `Empty` heeft helemaal geen methoden. Dan voegt `Empty.^add_method('greet', …)` er een methode aan toe. Ze heet `greet`. De methode zelf is een anonieme `method { … }`. Anoniem betekent dat ze geen naam heeft. Daarna kun je `.greet` aanroepen op elk `Empty`-object. Het werkt alsof je de methode in de klasse schreef.

Dit is echte metaprogrammering. Metaprogrammering is code die met code werkt. Hier vragen we het metaobject van `Empty` om een nieuwe methode te laten groeien. Hetzelfde protocol zit achter dingen die je al gebruikt. Dit is het idee. Je schrijft `class`, `role`, `has` of `method`. Dan bouwt de compiler je type voor je. Hij gebruikt daarvoor MOP-methoden als `.^add_method` en `.^add_attribute`.

We zeggen niet zomaar “het idee”. Dit is een model van de taal. Het is geen belofte over één bepaalde compiler. Het objectsysteem is *gedefinieerd* via het MOP. Een implementatie is een compiler voor Raku. Stuurt ze echt elke declaratie via deze metamethoden? En kun je dat zien? Elke implementatie beslist dat zelf. Je kunt deze metamethoden ook zelf *aanroepen*. Om dezelfde reden hangt het resultaat dan af van de implementatie. Compilers kunnen je verschillende metamethoden geven. Deze methoden kunnen ook op verschillende manieren werken. Code kan `.^add_method` en vergelijkbare methoden gebruiken. Zulke code draait misschien niet op elke Raku op dezelfde manier.

Je kunt methoden toevoegen terwijl het programma draait. Dit is een krachtig gereedschap. Maar je hebt het zelden nodig. De meeste programma's gebruiken het nooit. Maar het maakt het objectsysteem van Raku open. De regels van klassen zijn ook met het MOP geschreven. Dus kun je deze regels uitbreiden. Voor gewone code heb je een ander deel van het MOP nodig. Je zag het in het vorige onderwerp. Dat zijn de metamethoden die in typen kijken.

{% include nav.html %}
