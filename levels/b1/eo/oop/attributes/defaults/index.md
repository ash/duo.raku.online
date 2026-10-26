---
title: Defaŭltaj valoroj
translations_gpt:
---

{% include menu.html %}

Vi povas doni al atributo _defaŭltan valoron_. Ĝi estas uzata, kiam vi kreas objekton sen valoro por tiu atributo. Skribu la defaŭlton post la atributo, per `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Notu, ke vi povas doni al atributoj tipon, same kiel al variabloj.

Kiam vi ne transdonas `weight` al `new`, la atributo ricevas sian defaŭltan valoron:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Vi ankoraŭ povas anstataŭigi la defaŭlton, se vi transdonas valoron:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Atributo sen defaŭlto kaj sen valoro de `new` estas simple nedifinita. Ĝi estas ekzakte kiel nova skalara variablo.

{% include nav.html %}
