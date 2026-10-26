---
title: Atribūti
translations_gpt:
---

{% include menu.html %}

Tukša klase nav īpaši noderīga. Objektam vajag savus datus. Tāpēc jūs dodat klasei _atribūtus_. Atribūts ir daļa no objekta datiem. Lai izveidotu atribūtu, rakstiet klasē atslēgvārdu `has`:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Katrs objekts saņem savu šo atribūtu kopiju. Jūs dodat tiem vērtības, kad veidojat objektu. Padodiet vērtības metodei `new` kā nosauktus argumentus:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Apskatiet `$.` kodā `has $.name`. Tas dara divas lietas. Pirmkārt, tas izveido atribūtu. Otrkārt, tas izveido metodi ar tādu pašu nosaukumu. Šī metode atgriež atribūta vērtību. Tādu metodi sauc par _piekļuves metodi_:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Dažādi objekti glabā savas vērtības. Tie nedala tās savā starpā:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Nākamie temati parāda divas lietas. Vispirms jūs veidojat atribūtus, kurus var mainīt. Pēc tam jūs dodat atribūtiem noklusētās vērtības. Ir arī veids, kā veidot _privātus_ atribūtus. Kods ārpus objekta tos neredz. Pie tiem mēs atgriežamies pēc metodēm.

{% include nav.html %}
