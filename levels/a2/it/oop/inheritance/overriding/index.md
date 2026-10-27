---
title: Sovrascrivere i metodi
translations_gpt:
---

{% include menu.html %}

Una classe figlia eredita i metodi dalla sua classe genitrice. Ma può anche avere una sua versione di uno di questi metodi. Questo si chiama _sovrascrittura_. Chiami il metodo su un oggetto della classe figlia. Allora gira la versione della figlia. La versione della genitrice non gira.

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

`Dog` e `Cat` sovrascrivono entrambi `speak`. Ereditano il metodo `intro` da `Animal` e non lo cambiano. Questo metodo chiama `self.speak`. Questa chiamata usa lo `speak` dell'oggetto stesso:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Così lo stesso `intro` ereditato dà risultati diversi. Questo succede perché ogni oggetto ha il suo `speak`. Questa è una delle idee principali della programmazione a oggetti. Il codice è condiviso. Ma funziona in modo diverso per ogni tipo di oggetto.

{% include nav.html %}
