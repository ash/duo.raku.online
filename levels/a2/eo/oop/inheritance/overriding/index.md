---
title: Superregi metodojn
translations_gpt:
---

{% include menu.html %}

Ida klaso heredas metodojn de sia patra klaso. Sed ĝi ankaŭ povas havi sian propran version de tia metodo. Tio nomiĝas _superregi_. Vi vokas la metodon sur objekto de la ida klaso. Tiam la versio de la ido ruliĝas. La versio de la patro ne ruliĝas.

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

`Dog` kaj `Cat` ambaŭ superregas `speak`. Ili heredas la metodon `intro` de `Animal` kaj ne ŝanĝas ĝin. Ĉi tiu metodo vokas `self.speak`. Ĉi tiu voko uzas la propran `speak` de la objekto:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Do la sama heredita `intro` donas malsamajn rezultojn. Tio estas, ĉar ĉiu objekto havas sian propran `speak`. Ĉi tio estas unu el la ĉefaj ideoj de objekt-orientita programado. La kodo estas komuna. Sed ĝi funkcias alimaniere por ĉiu speco de objekto.

{% include nav.html %}
