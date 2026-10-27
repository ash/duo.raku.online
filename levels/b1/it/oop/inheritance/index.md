---
title: Ereditarietà
translations_gpt:
---

{% include menu.html %}

L'_ereditarietà_ permette a una classe di costruire su un'altra. Dopo il nome della nuova classe, scrivi `is` e il nome di un'altra classe. La nuova classe eredita allora tutti gli attributi e i metodi di quella classe. Quella classe si chiama la sua classe _genitrice_ (o _base_).

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
}

class Dog is Animal {
}
```

`Dog is Animal` significa che un `Dog` è un tipo di `Animal`. La classe `Dog` non ha codice proprio. Ma ha già l'attributo `name` e il metodo `speak` di `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Un oggetto `Dog` conta anche come un `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Lo smart-match `~~` contro un tipo è vero se l'oggetto ha quel tipo. È vero anche se l'oggetto eredita da quel tipo. Nel prossimo argomento, una classe figlia sostituisce un metodo ereditato con una versione propria.

{% include nav.html %}
