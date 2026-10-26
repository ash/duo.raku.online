---
title: Lasāmi un rakstāmi atribūti
translations_gpt:
---

{% include menu.html %}

Pēc noklusējuma piekļuves metode, ko izveido `has $.name`, ir _tikai lasāma_. Konstruktors `new` uzstāda vērtību, kad tas rada objektu. Pēc tam kods ārpus objekta var vērtību nolasīt, bet nevar to mainīt. Piešķiršana tai ir kļūda:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Programma apstājas ar šo ziņojumu:

```
Cannot modify an immutable Str (Rex)
```

Vai vēlaties mainīt vērtību caur piekļuves metodi? Tad atzīmējiet atribūtu ar iezīmi `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Tagad piekļuves metode atgriež rakstāmu konteineru. Tāpēc piešķiršana darbojas, un objekta `name` kļūst par `Max`.

{% include nav.html %}
