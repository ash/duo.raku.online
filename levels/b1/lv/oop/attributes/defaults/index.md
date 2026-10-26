---
title: Noklusētās vērtības
translations_gpt:
---

{% include menu.html %}

Atribūtam jūs varat dot _noklusēto vērtību_. To izmanto, kad jūs radāt objektu bez vērtības šim atribūtam. Rakstiet noklusējumu aiz atribūta ar `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Ievērojiet, ka atribūtiem var dot tipu, tāpat kā mainīgajiem.

Kad jūs nepadodat `weight` metodei `new`, atribūts saņem savu noklusēto vērtību:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Jūs joprojām varat aizstāt noklusējumu, ja padodat vērtību:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Atribūts bez noklusējuma un bez vērtības no `new` ir vienkārši nedefinēts. Tas ir tieši tāds pats kā jauns skalārs mainīgais.

{% include nav.html %}
