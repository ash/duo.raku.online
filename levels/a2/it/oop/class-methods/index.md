---
title: Metodi di classe
translations_gpt:
---

{% include menu.html %}

Chiami quasi tutti i metodi su un oggetto. Un oggetto è un'istanza di una classe. Ma puoi anche chiamare un metodo sulla classe stessa. Questo vuol dire che lo chiami sull'oggetto di tipo. Un metodo così spesso si chiama _metodo di classe_. È utile per valori e azioni di tutta la classe. Non appartengono a un solo oggetto.

Scrivi un metodo di classe come ogni altro metodo:

```raku
class Road {
    method speed-limit { 120 }
}
```

Ma lo chiami sul nome della classe. Non lo chiami su un'istanza:

```raku
say Road.speed-limit; # 120
```

Conosci già un metodo di classe. Ma non lo hai mai chiamato così. È `new`. Chiami `new` sulla classe, e questo crea un nuovo oggetto.

Un metodo di classe non può usare gli attributi di un'istanza. Dietro di lui non c'è nessun oggetto. Così può lavorare solo con informazioni comuni. Queste informazioni sono uguali per ogni oggetto della classe. A volte il lavoro ha bisogno dei dati di un oggetto. Allora usa un metodo normale, e chiamalo su un'istanza. A volte il lavoro non ha bisogno di questi dati. Allora un metodo di classe è una buona scelta.

I metodi di classe non hanno bisogno di un'istanza. Ma a volte hai un oggetto. Allora puoi comunque usare i suoi dati in questi metodi:

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

Questo programma stampa il risultato che ti aspetti:

```
The maximum speed on Road 404 is 120
```

Qui ti serve un'istanza della classe. Senza di essa, una chiamata come `say Road.info` dà un errore.

{% include nav.html %}
