---
title: Atribūti
translations_gpt:
---

{% include menu.html %}

Tukša klase nav īpaši noderīga. Lai objekts varētu glabāt savus datus, dodiet klasei _atribūtus_. Atribūtu jūs deklarējat klases iekšā ar atslēgvārdu `has`:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Katram klases objektam ir sava šo atribūtu kopija. To vērtības jūs uzstādāt, kad radāt objektu. Lai to izdarītu, padodiet tās `new` kā nosauktus argumentus:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

`$.` kodā `has $.name` dara divas lietas uzreiz. Tas deklarē atribūtu un izveido metodi ar tādu pašu nosaukumu. Šo metodi sauc par _piekļuves metodi_, un tā atgriež atribūta vērtību:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Dažādi objekti glabā savas vērtības, kas nav atkarīgas cita no citas:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Nākamie temati parāda, kā padarīt atribūtus maināmus. Tie arī parāda, kā dot atribūtiem noklusētās vērtības. Ir arī veids, kā deklarēt _privātus_ atribūtus, kas ir paslēpti no ārpuses. Pie tiem mēs atgriezīsimies, kad būsim iepazinuši metodes.

{% include nav.html %}
