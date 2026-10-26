---
title: Metodi
translations_gpt:
---

{% include menu.html %}

Gli attributi danno a un oggetto i suoi dati, e i _metodi_ gli danno un comportamento. Un metodo è una subroutine che appartiene a una classe. Lo chiami su un oggetto. Dichiari un metodo con la parola chiave `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Per chiamare un metodo su un oggetto, usa il punto, come con un accessore:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Dentro un metodo, `self` è l'oggetto su cui il metodo è stato chiamato. Raggiungi gli attributi attraverso i loro accessori. Li scrivi come `$.name`, `$.age` e così via. Funzionano anche dentro le stringhe tra virgolette doppie, dove Raku inserisce i loro valori:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

I prossimi argomenti parlano degli attributi privati, perché ora abbiamo i metodi per usarli. Poi parlano dei metodi che prendono parametri e dei metodi che chiamano altri metodi.

{% include nav.html %}
