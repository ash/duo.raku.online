---
title: Metodi
translations_gpt:
---

{% include menu.html %}

Gli attributi danno a un oggetto i suoi dati. Con i _metodi_, un oggetto può anche fare delle cose. Un metodo è una subroutine dentro una classe. Chiami un metodo su un oggetto. Per creare un metodo, scrivi la parola chiave `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Per chiamare un metodo su un oggetto, usa un punto. È come con un accessore:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Dentro un metodo, `self` è l'oggetto. È l'oggetto su cui hai chiamato il metodo. Arrivi agli attributi con i loro accessori. Li scrivi come `$.name`, `$.age` e così via. Puoi usarli anche dentro una stringa tra virgolette doppie:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

I prossimi argomenti parlano di tre cose. La prima sono gli attributi privati. Per loro ti servono i metodi, e ora hai i metodi. La seconda sono i metodi con parametri. La terza sono i metodi che chiamano altri metodi.

{% include nav.html %}
