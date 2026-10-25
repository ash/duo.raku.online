---
title: Erstellen und Aufrufen von Funktionen
---

{% include menu.html %}

Jetzt sind Sie im letzten Abschnitt des ersten Teils des Kurses. Danach wissen Sie genug, um fast _jedes_ Programm in Raku zu schreiben. Das Thema dieses Abschnitts sind _Funktionen_. Man nennt sie auch _Subroutinen_ oder einfach _Routinen_.

Eine Funktion ist ein Stück Code mit Namen, das Sie viele Male verwenden können. Sie können eine Funktion von verschiedenen Stellen im Programm _aufrufen_.

## Erstellen einer Funktion

Um eine Funktion zu erstellen, schreiben Sie das Schlüsselwort `sub` und dann den Namen der Funktion. Der Körper der Funktion steht in einem Paar geschweifter Klammern.

```raku
sub greet {
    say 'Hallo, Welt!';
}
```

## Verwenden einer Funktion

Um die Funktion zu verwenden, schreiben Sie einfach ihren Namen dorthin, wo Sie sie aufrufen wollen. In Raku kann die Definition der Funktion vor oder nach dem Aufruf stehen.

```raku
say 'Dies ist, was das erste Programm normalerweise ausgibt:';
greet;    

sub greet {
    say 'Hallo, Welt!';
}
```

Das Programm gibt beide Nachrichten aus:

```console
$ raku t.raku
Dies ist, was das erste Programm normalerweise ausgibt:
Hallo, Welt!
```

Jetzt sehen wir uns weitere Details dazu an, wie man Funktionen erstellt und verwendet.

{% include nav.html %}
