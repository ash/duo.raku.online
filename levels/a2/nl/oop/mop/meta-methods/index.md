---
title: Metamethoden
translations_gpt:
---

{% include menu.html %}

Je roept een _metamethode_ aan met `.^`, niet met `.`. Een gewone `.method` draait een methode van het object. Een `.^method` is anders. Die roept een methode aan van het **metaobject** van het object. Een metaobject is een object dat een type beschrijft. Dus vraagt de aanroep iets over het type. Hij treedt niet op als het type.

Je kent `.^name` al. Die geeft de naam van het type terug:

```raku
say 42.^name; # Int
```

Andere metamethoden laten zien hoe een type gebouwd is. `.^attributes` geeft een lijst van zijn attributen. `.^find_method` zegt je of een methode bestaat:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` geeft de _method resolution order_ terug. Dit is een keten van typen. Raku zoekt in elk ervan naar een methode, in deze volgorde. Het is de lijn van overerving van een klasse:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` erft van `A`. Uiteindelijk erft elk type van `Any` en `Mu`. Je roept een methode aan op een `B`. Dan zoekt Raku haar precies langs dit pad. Deze metamethoden maken van je typen gegevens. Deze gegevens laten zien hoe de typen gebouwd zijn. Je kunt ernaar vragen terwijl het programma draait.

{% include nav.html %}
