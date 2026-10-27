---
title: Rollen
translations_gpt:
---

{% include menu.html %}

Eine _Rolle_ ist eine Gruppe von Methoden. Manchmal hat sie auch Daten. Mehrere Klassen können eine Rolle teilen. Vererbung sagt: Eine Klasse _ist eine_ Art einer anderen Klasse. Eine Rolle ist anders. Sie beschreibt etwas, das eine Klasse _kann_.

Eine Rolle erstellen Sie mit dem Schlüsselwort `role`. Sie sieht ganz ähnlich aus wie eine Klasse. Einer Klasse geben Sie eine Rolle mit dem Trait `does`:

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

Jetzt hat die Klasse `Person` die Methode `hello` aus der Rolle. Sie funktioniert genau wie eine Methode in der Klasse selbst:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Eine Klasse kann eine Rolle erfüllen. Dann weiß Raku, dass die Klasse diese Rolle hat:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Sehen Sie sich die Methode `hello` in der Rolle an. Sie benutzt `self.name`. Aber die Rolle selbst hat kein Attribut `name`. Das ist kein Problem. Die Methode läuft als Teil der Klasse, die die Rolle einbindet. Eine Rolle einbinden heißt, sie in die Klasse aufnehmen. Und diese Klasse hat das Attribut `name`. Das nächste Thema zeigt noch mehr. Eine Klasse kann mehr als eine Rolle zugleich haben.

{% include nav.html %}
