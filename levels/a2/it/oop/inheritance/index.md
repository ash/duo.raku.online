---
title: Ereditarietà
translations_gpt:
---

{% include menu.html %}

L'_ereditarietà_ permette a una classe di costruire su un'altra classe. Per farlo, scrivi `is` dopo il nome della nuova classe. Poi scrivi il nome dell'altra classe. La nuova classe eredita dall'altra classe. Prende tutti i suoi attributi e metodi. L'altra classe è la classe _genitrice_, o la classe _base_.

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

`Dog is Animal` significa che un `Dog` è un tipo di `Animal`. In `Dog` non scriviamo niente di nuovo. Ma `Dog` ha già l'attributo `name` di `Animal`. Ha anche il metodo `speak` di `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Un oggetto `Dog` è anche un `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Con `~~` puoi fare lo smart-match di un oggetto con un tipo. Il risultato è vero quando l'oggetto ha questo tipo. È vero anche quando l'oggetto eredita da questo tipo. Il prossimo argomento parla di una classe figlia. Una classe figlia eredita da una classe genitrice. Può sostituire un metodo della sua genitrice con una sua versione.

{% include nav.html %}
