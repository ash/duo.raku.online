---
title: Noklusētās vērtības
translations_gpt:
---

{% include menu.html %}

Atribūtam var būt _noklusētā vērtība_. Dažreiz jūs veidojat objektu bez vērtības šim atribūtam. Tad Raku izmanto noklusēto vērtību. Rakstiet noklusēto vērtību aiz atribūta ar `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Ievērojiet vēl vienu lietu. Jūs varat dot atribūtam tipu, tāpat kā mainīgajam. Tad vērtībai jābūt šī tipa.

Šeit `new` nesaņem `weight`. Tāpēc atribūts saņem noklusēto vērtību:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Bet jūs joprojām varat dot savu vērtību. Tā aizstāj noklusēto vērtību:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Dažreiz atribūtam nav noklusētās vērtības. Jūs arī nepadodat tam vērtību caur `new`. Tad atribūts ir vienkārši nedefinēts. Tas ir kā jauns skalārs mainīgais.

{% include nav.html %}
