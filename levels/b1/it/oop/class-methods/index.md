---
title: Metodi di classe
translations_gpt:
---

{% include menu.html %}

La maggior parte dei metodi si chiama su un oggetto, che è un'istanza di una classe. Ma puoi anche chiamare un metodo sulla classe stessa. In altre parole, lo chiami sull'oggetto di tipo. Spesso un metodo così viene chiamato _metodo di classe_. È utile per valori e operazioni che appartengono a tutta la classe. Non appartengono a un oggetto particolare.

Definisci un metodo di classe esattamente come qualsiasi altro metodo:

```raku
class Road {
    method speed-limit { 120 }
}
```

Ma lo chiami sul nome della classe invece che su un'istanza:

```raku
say Road.speed-limit; # 120
```

In effetti, hai già usato un metodo di classe senza chiamarlo così. `new` è un metodo che chiami sulla classe per creare un nuovo oggetto.

Un metodo di classe non può usare gli attributi di istanza, perché dietro di esso non c'è un oggetto particolare. Quindi lavora solo con informazioni che tutti gli oggetti della classe condividono. Se il lavoro dipende dai dati di un oggetto, usa un metodo ordinario. Chiamalo su un'istanza. Se non dipende, un metodo di classe è la scelta naturale.

I metodi di classe non hanno bisogno di un'istanza. Però, quando un oggetto ce l'hai, puoi usare i suoi dati in questi metodi:

```raku
class Road {
    has $.name;
    method speed-limit { 120 }

    method info {
        "The maximum speed on $.name is " ~ self.speed-limit
    }
}

my $R404 = Road.new(name => 'Road 404');
say $R404.info;
```

Questo programma stampa il risultato che ti aspetteresti:

```
The maximum speed on Road 404 is 120
```

Senza un oggetto della classe, una chiamata come `say Road.info` darebbe un errore.

{% include nav.html %}
