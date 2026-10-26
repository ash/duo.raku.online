---
title: Lasāmi un rakstāmi atribūti
translations_gpt:
---

{% include menu.html %}

Pēc noklusējuma piekļuves metode no `has $.name` ir _tikai lasāma_. Konstruktors dod atribūtam tā vērtību. Konstruktors ir metode, kas veido objektu, šeit `new`. Pēc tam kods ārpus objekta var nolasīt vērtību. Bet tas nevar to mainīt. Pamēģiniet piešķirt tai jaunu vērtību. Tas dod kļūdu:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Programma apstājas ar šo kļūdu:

```
Cannot modify an immutable Str (Rex)
```

Vai jūs gribat mainīt vērtību caur piekļuves metodi? Tad atzīmējiet atribūtu ar iezīmi `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Tagad piekļuves metode atgriež konteineru, kurā var rakstīt. Tāpēc piešķiršana darbojas. Objekta `name` tagad ir `Max`.

{% include nav.html %}
