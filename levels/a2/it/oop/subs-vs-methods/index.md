---
title: Subroutine e metodi
translations_gpt:
---

{% include menu.html %}

Ora conosci due modi per mettere insieme alcune azioni. Uno è la _subroutine_. L'altro è il _metodo_. Si somigliano. Ma li usi in modi diversi.

Una subroutine sta da sola. Non appartiene a niente. La chiami con il suo nome. Le passi come argomenti tutto quello che le serve:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Un metodo appartiene a una classe. È come una funzione dentro la classe. Chiami un metodo su un oggetto, con un punto. Un oggetto è un valore della classe. Il metodo può usare i dati del suo oggetto. Per questo ha `self` e gli accessori degli attributi. Quindi non gli passi questi dati:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Tutti e due danno lo stesso numero. La differenza è da dove arrivano i dati. La subroutine riceve il raggio come argomento. Il metodo legge il raggio dal suo oggetto. È l'oggetto su cui lo chiami.

Ecco una regola semplice. Il codice sta da solo e lavora solo con i suoi argomenti? Allora usa una subroutine. Il codice appartiene a un oggetto e lavora con i suoi dati? Allora usa un metodo. Il codice appartiene a una classe, ma non a un solo oggetto? Allora usa i metodi di classe.

{% include nav.html %}
