---
title: Methoden toevoegen tijdens het draaien
translations_gpt:
---

{% include menu.html %}

Je kunt het MOP niet alleen gebruiken om een type te bekijken. Het kan een type ook **veranderen** terwijl het programma draait. De metamethode `.^add_method` voegt een nieuwe methode aan een klasse toe:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

De klasse `Empty` heeft helemaal geen methoden. Dan voegt `Empty.^add_method('greet', …)` een methode toe die `greet` heet, gegeven als een anonieme `method { … }`. Vanaf dan reageert elk `Empty`-object op `.greet`. Het werkt precies alsof je de methode in de klasse had geschreven.

Dit is echte metaprogrammering. We vragen het metaobject voor `Empty` om een nieuwe methode te laten groeien. Hetzelfde protocol zit achter mogelijkheden die je al hebt gebruikt. In principe werkt het zo. Als je `class`, `role`, `has` of `method` schrijft, bouwt de compiler je type voor je. Dat doet hij met MOP-methoden als `.^add_method` en `.^add_attribute`.

We zeggen “in principe” omdat dit een model van de taal is. Het is geen belofte over één bepaalde compiler. Het objectsysteem is *gedefinieerd* in termen van het MOP. Maar stuurt een bepaalde implementatie echt elke declaratie via die metamethoden? En kun je zien dat ze dat doet? Dat beslist elke implementatie zelf. Om dezelfde reden hangt het zelf *aanroepen* van deze metamethoden af van de implementatie. Compilers kunnen verschillende metamethoden aanbieden, en hoe die precies werken, kan verschillen. Dus werkt code met `.^add_method` en vergelijkbare methoden misschien op elke Raku anders.

Methoden toevoegen tijdens het draaien is een krachtig gereedschap, maar je zult het zelden nodig hebben. De meeste programma's gebruiken het nooit. Maar het is wat het objectsysteem van Raku open maakt. De regels van klassen zijn zelf met het MOP geschreven, dus kun je ze uitbreiden. In gewone code is het bekijken van typen het deel van het MOP dat je echt zult gebruiken. Deze metamethoden zag je in het vorige onderwerp.

{% include nav.html %}
