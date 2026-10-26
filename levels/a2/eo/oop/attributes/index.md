---
title: Atributoj
translations_gpt:
---

{% include menu.html %}

Malplena klaso ne estas tre utila. Objekto bezonas siajn proprajn datumojn. Por tio vi donas al la klaso _atributojn_. Atributo estas peco de datumoj en objekto. Por krei atributon, skribu la ŝlosilvorton `has` en la klaso:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Ĉiu objekto ricevas sian propran kopion de ĉi tiuj atributoj. Vi donas al ili valorojn, kiam vi faras la objekton. Transdonu la valorojn al `new` kiel nomitajn argumentojn:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Rigardu `$.` en `has $.name`. Ĝi faras du aferojn. Unue, ĝi kreas atributon. Due, ĝi kreas metodon kun la sama nomo. Ĉi tiu metodo redonas la valoron de la atributo. Tia metodo nomiĝas _atingilo_:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Malsamaj objektoj tenas siajn proprajn valorojn. Ili ne dividas ilin:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

La sekvaj temoj montras du aferojn. Unue, vi faras atributojn, kiujn vi povas ŝanĝi. Poste vi donas al atributoj defaŭltajn valorojn. Estas ankaŭ maniero fari _privatajn_ atributojn. Kodo ekster la objekto ne povas vidi ilin. Ni revenas al ili post la metodoj.

{% include nav.html %}
