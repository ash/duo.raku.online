---
title: Defaŭltaj valoroj
translations_gpt:
---

{% include menu.html %}

Atributo povas havi _defaŭltan valoron_. Foje vi faras objekton sen valoro por la atributo. Tiam Raku uzas la defaŭltan valoron. Skribu la defaŭlton post la atributo, per `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Notu ankoraŭ unu aferon. Vi povas doni al atributo tipon, kiel al variablo. Tiam la valoro devas havi ĉi tiun tipon.

Ĉi tie `new` ricevas neniun `weight`. Do la atributo ricevas la defaŭlton:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Sed vi ankoraŭ povas doni vian propran valoron. Ĝi anstataŭas la defaŭlton:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Foje atributo ne havas defaŭlton. Vi ankaŭ ne transdonas valoron por ĝi al `new`. Tiam la atributo estas simple nedifinita. Ĝi estas kiel nova skalara variablo.

{% include nav.html %}
