---
title: Objekte inspizieren
translations_gpt:
---

{% include menu.html %}

Im [Abschnitt über Container](/de/advanced/containers) haben Sie `.^name` benutzt, um einen Wert nach seinem Typ zu fragen. Mit denselben Meta-Aufrufen mit `.^` können Sie in eine Klasse und ihre Objekte hineinsehen. Sie sehen ihre Namen, ihre Attribute und ihren Platz in einer Hierarchie von Klassen.

Die Metamethode `.^name` liefert den Namen der Klasse:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

Die Metamethode `.^attributes` listet die Attribute der Klasse auf. Sie sehen jedes Attribut mit seinem Typ und seinem internen privaten Namen. Das ist die `$!`-Form, die Sie bei den [privaten Attributen](/de/oop/methods/private-attributes) kennengelernt haben:

```raku
say Dog.^attributes; # (Str $!name)
```

Introspektion ist nützlich für Werkzeuge, die mit jeder Art von Objekt arbeiten. Zum Beispiel kann so ein Werkzeug jedes Attribut eines Objekts ausgeben. Es muss die Klasse dafür vorher nicht kennen. Das nächste Thema zeigt, wie Sie die Vererbungskette einer Klasse sehen.

{% include nav.html %}
