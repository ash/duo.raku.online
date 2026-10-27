---
title: Subroutine e metodi
translations_gpt:
---

{% include menu.html %}

Ora hai due modi per organizzare un comportamento: una _subroutine_ e un _metodo_. Si somigliano, ma li usi in modi diversi.

Una subroutine sta da sola. La chiami per nome, e le passi come argomenti tutto ciò che le serve:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Un metodo appartiene a una classe. Lo chiami su un oggetto con il punto. Può usare i dati dell'oggetto stesso attraverso `self` e gli accessori degli attributi. Quindi non devi passargli quei dati:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Entrambi calcolano lo stesso numero. La differenza è da dove arrivano i dati. La subroutine riceve il raggio come argomento. Il metodo lo legge dall'oggetto su cui è stato chiamato.

Ecco una regola semplice. Usa una subroutine per un'operazione separata che trasforma solo i suoi argomenti in un risultato. Usa un metodo quando il comportamento appartiene a un oggetto e usa i suoi dati. Per le routine generali che appartengono a tutta la classe, usa i metodi di classe.

{% include nav.html %}
