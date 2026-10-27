---
title: Ruoli
translations_gpt:
---

{% include menu.html %}

Un _ruolo_ è un insieme di metodi. A volte ha anche dei dati. Più classi possono condividere un ruolo. L'ereditarietà dice che una classe _è_ un tipo di un'altra classe. Un ruolo è diverso. Descrive qualcosa che una classe _sa fare_.

Crei un ruolo con la parola chiave `role`. Somiglia molto a una classe. Per dare un ruolo a una classe, usa il tratto `does`:

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

Ora la classe `Person` ha il metodo `hello` del ruolo. Funziona proprio come un metodo nella classe stessa:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Una classe può assumere un ruolo. Allora Raku sa che la classe ha questo ruolo:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Guarda il metodo `hello` nel ruolo. Usa `self.name`. Ma il ruolo stesso non ha un attributo `name`. Questo non è un problema. Il metodo gira come parte della classe che compone il ruolo. Comporre un ruolo vuol dire prenderlo dentro la classe. E quella classe ha l'attributo `name`. Il prossimo argomento mostra di più. Una classe può avere più di un ruolo alla volta.

{% include nav.html %}
