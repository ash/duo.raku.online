---
title: Metamethoden
translations_gpt:
---

{% include menu.html %}

Een _metamethode_ roep je aan met `.^` in plaats van `.`. De gewone `.method` draait een methode van het object. Maar `.^method` roept een methode aan op het **metaobject** van het object. Dus vraagt hij iets over het type, in plaats van als het type op te treden.

Je hebt `.^name` al gezien, die de naam van het type teruggeeft:

```raku
say 42.^name; # Int
```

Andere metamethoden kijken naar de structuur van een type. `.^attributes` somt zijn attributen op, en `.^find_method` vertelt je of een methode bestaat:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` geeft de _method resolution order_ terug. Dit is de keten van typen die Raku op volgorde doorzoekt om een methode te vinden. Het is de overervingslijn van een klasse:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` erft van `A`, en uiteindelijk erft elk type van `Any` en `Mu`. Dus zoekt Raku een methode van een `B` precies langs dat pad. Deze metamethoden maken van de structuur van je typen gegevens. Je kunt tijdens het draaien naar deze gegevens vragen.

{% include nav.html %}
