---
title: Superregi metodojn
translations_gpt:
---

{% include menu.html %}

Ida klaso povas havi sian propran version de metodo, kiun ĝi heredas. Tio nomiĝas _superregi_. Por objekto de la ida klaso, la metodvoko rulas la version de la ido. La versio de la patro ne ruliĝas.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` kaj `Cat` ĉiu superregas `speak`. La metodo `intro` venas el `Animal` sen ŝanĝoj. Ĝi vokas `self.speak`, kaj ĉi tiu voko uzas tiun `speak`, kiu apartenas al la efektiva objekto:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Do la sama heredita `intro` donas malsamajn rezultojn, ĉar ĉiu objekto havas sian propran `speak`. Ĉi tio estas unu el la centraj ideoj de objekt-orientita programado. Komuna kodo ŝanĝas sian konduton laŭ ĉiu speco de objekto.

{% include nav.html %}
