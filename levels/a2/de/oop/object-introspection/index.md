---
title: Objekte inspizieren
translations_gpt:
---

{% include menu.html %}

Im [Abschnitt über Container](/de/advanced/containers) haben Sie `.^name` benutzt. Damit haben Sie einen Wert nach seinem Typ gefragt. Dieselben Meta-Aufrufe mit `.^` funktionieren auch mit Klassen und Objekten. Mit ihnen sehen Sie ihre Namen und ihre Attribute. Sie sehen auch ihren Platz im Baum der Klassen.

Eine Metamethode ist eine Methode, die Sie mit `.^` aufrufen. Die Metamethode `.^name` gibt den Namen der Klasse zurück:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

Die Metamethode `.^attributes` listet die Attribute der Klasse auf. Für jedes Attribut sehen Sie seinen Typ. Sie sehen auch seinen inneren privaten Namen. Das ist die Form mit `$!`. Sie haben sie bei den [privaten Attributen](/de/oop/methods/private-attributes) gesehen:

```raku
say Dog.^attributes; # (Str $!name)
```

Introspektion heißt: Sie fragen ein Objekt nach sich selbst. Sie ist nützlich für Werkzeuge, die mit jeder Art von Objekt arbeiten. Zum Beispiel kann ein Werkzeug jedes Attribut eines Objekts ausgeben. Es muss die Klasse des Objekts vorher nicht kennen. Im nächsten Thema geht es um die Vererbungskette einer Klasse. Das ist die Linie ihrer Elternklassen.

{% include nav.html %}
