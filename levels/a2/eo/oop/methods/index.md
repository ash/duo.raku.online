---
title: Metodoj
translations_gpt:
---

{% include menu.html %}

Atributoj donas al objekto ĝiajn datumojn. Per _metodoj_ objekto ankaŭ povas fari aferojn. Metodo estas subrutino en klaso. Vi vokas metodon sur objekto. Por krei metodon, skribu la ŝlosilvorton `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Por voki metodon sur objekto, uzu punkton. Estas same kiel kun atingilo:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Ene de metodo, `self` estas la objekto. Ĝi estas la objekto, sur kiu vi vokis la metodon. Vi ricevas la atributojn tra iliaj atingiloj. Vi skribas ilin kiel `$.name`, `$.age` kaj tiel plu. Vi ankaŭ povas uzi ilin en ĉeno kun duoblaj citiloj:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

La sekvaj temoj traktas tri aferojn. La unua estas privataj atributoj. Vi bezonas metodojn por ili, kaj nun vi havas metodojn. La dua estas metodoj kun parametroj. La tria estas metodoj, kiuj vokas aliajn metodojn.

{% include nav.html %}
