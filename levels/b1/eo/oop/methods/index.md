---
title: Metodoj
translations_gpt:
---

{% include menu.html %}

Atributoj donas al objekto ĝiajn datumojn, kaj _metodoj_ donas al ĝi konduton. Metodo estas subrutino, kiu apartenas al klaso. Vi vokas ĝin sur objekto. Vi deklaras metodon per la ŝlosilvorto `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Por voki metodon sur objekto, uzu punkton, kiel kun atingilo:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Ene de metodo, `self` estas la objekto, sur kiu la metodo estis vokata. Vi atingas la atributojn tra iliaj atingiloj. Vi skribas ilin kiel `$.name`, `$.age` kaj tiel plu. Ili funkcias ankaŭ en ĉenoj kun duoblaj citiloj, kie Raku enmetas iliajn valorojn:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

La sekvaj temoj traktas privatajn atributojn, ĉar nun ni havas metodojn por uzi ilin. Poste ili traktas metodojn, kiuj prenas parametrojn, kaj metodojn, kiuj vokas aliajn metodojn.

{% include nav.html %}
