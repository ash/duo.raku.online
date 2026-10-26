---
title: Metodes
translations_gpt:
---

{% include menu.html %}

Atribūti dod objektam tā datus, bet _metodes_ dod tam uzvedību. Metode ir apakšprogramma, kas pieder klasei. Jūs to izsaucat uz objekta. Metodi jūs deklarējat ar atslēgvārdu `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Lai izsauktu metodi uz objekta, lietojiet punktu, tāpat kā ar piekļuves metodi:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Metodes iekšā `self` ir objekts, uz kura metode tika izsaukta. Atribūtus jūs sasniedzat caur to piekļuves metodēm. Jūs tās rakstāt kā `$.name`, `$.age` un tā tālāk. Tās darbojas arī virknēs ar dubultpēdiņām, kur Raku ievieto to vērtības:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Nākamie temati aplūko privātus atribūtus, jo tagad mums ir metodes, ar ko tos izmantot. Pēc tam tie aplūko metodes, kas ņem parametrus, un metodes, kas izsauc citas metodes.

{% include nav.html %}
