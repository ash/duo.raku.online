---
title: Atributoj
translations_gpt:
---

{% include menu.html %}

Malplena klaso ne estas tre utila. Por ke objekto tenu siajn proprajn datumojn, donu al la klaso _atributojn_. Vi deklaras atributon ene de la klaso per la ŝlosilvorto `has`:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Ĉiu objekto de la klaso havas sian propran kopion de ĉi tiuj atributoj. Vi donas al ili valorojn, kiam vi kreas la objekton. Por tio, transdonu ilin al `new` kiel nomitajn argumentojn:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

La `$.` en `has $.name` faras du aferojn samtempe. Ĝi deklaras atributon, kaj ĝi kreas metodon kun la sama nomo. Ĉi tiu metodo nomiĝas _atingilo_, kaj ĝi redonas la valoron de la atributo:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Malsamaj objektoj tenas siajn proprajn valorojn, kiuj ne dependas unu de la alia:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

La sekvaj temoj montras, kiel fari atributojn ŝanĝeblaj. Ili ankaŭ montras, kiel doni al atributoj defaŭltajn valorojn. Estas ankaŭ maniero deklari _privatajn_ atributojn, kiuj estas kaŝitaj de ekstere. Ni revenos al ili, kiam ni prezentos la metodojn.

{% include nav.html %}
