---
title: Ruoli
translations_gpt:
---

{% include menu.html %}

Un _ruolo_ è un pezzo di comportamento, e a volte di dati, che più classi possono condividere. L'ereditarietà dice che una classe _è_ un tipo di un'altra classe. Un ruolo, invece, descrive qualcosa che una classe _sa fare_.

Definisci un ruolo con la parola chiave `role`, nello stesso modo di una classe. Per darlo a una classe, usi il tratto `does`:

```raku
role Greet {
    method hello {
        'Hello from ' ~ self.name;
    }
}

class Person does Greet {
    has $.name;
}
```

Ora la classe `Person` ha il metodo `hello` del ruolo. Funziona come se lo avessi scritto nella classe stessa:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Se una classe assume un ruolo, Raku vede che ha questo ruolo:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Nota che il metodo `hello` del ruolo usa `self.name`. Ma il ruolo stesso non ha un attributo `name`. Va bene così. Il metodo gira come parte della classe che compone il ruolo, qualunque sia. E quella classe fornisce `name`. Il prossimo argomento mostra che una classe può avere più ruoli alla volta.

{% include nav.html %}
