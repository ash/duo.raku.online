---
title: Sovrascrivere i metodi
translations_gpt:
---

{% include menu.html %}

Una classe figlia può avere una sua versione di un metodo che eredita. Questo si chiama _sovrascrittura_. Per un oggetto della classe figlia, la chiamata del metodo esegue la versione della figlia. La versione della genitrice non gira.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` e `Cat` sovrascrivono ciascuno `speak`. Il metodo `intro` arriva da `Animal` senza cambiamenti. Chiama `self.speak`, e questa chiamata usa lo `speak` che appartiene all'oggetto vero e proprio:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Così lo stesso `intro` ereditato dà risultati diversi, perché ogni oggetto ha il suo `speak`. Questa è una delle idee centrali della programmazione a oggetti. Il codice condiviso cambia il suo comportamento per adattarsi a ogni tipo di oggetto.

{% include nav.html %}
