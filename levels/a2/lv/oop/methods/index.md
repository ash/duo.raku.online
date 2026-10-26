---
title: Metodes
translations_gpt:
---

{% include menu.html %}

Atribūti dod objektam tā datus. Ar _metodēm_ objekts var arī kaut ko darīt. Metode ir apakšprogramma klasē. Metodi jūs izsaucat uz objekta. Lai izveidotu metodi, rakstiet atslēgvārdu `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Lai izsauktu metodi uz objekta, lietojiet punktu. Tas ir tāpat kā ar piekļuves metodi:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Metodes iekšā `self` ir objekts. Tas ir objekts, uz kura jūs izsaucāt metodi. Atribūtus jūs iegūstat caur to piekļuves metodēm. Jūs tās rakstāt kā `$.name`, `$.age` un tā tālāk. Jūs varat tās lietot arī virknē ar dubultpēdiņām:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Nākamie temati aplūko trīs lietas. Pirmā ir privāti atribūti. Tiem jums vajag metodes, un tagad jums metodes ir. Otrā ir metodes ar parametriem. Trešā ir metodes, kas izsauc citas metodes.

{% include nav.html %}
