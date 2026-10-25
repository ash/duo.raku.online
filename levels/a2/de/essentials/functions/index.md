---
title: Erstellen und Aufrufen von Funktionen
---

{% include menu.html %}

Mit diesem Abschnitt endet der erste Teil des Kurses. Danach können Sie fast _jedes_ Programm in Raku schreiben. Dieser Abschnitt handelt von _Funktionen_. Funktionen haben auch andere Namen: _Subroutinen_ oder einfach _Routinen_.

Eine Funktion ist ein Teil des Codes mit eigenem Namen. Sie können sie viele Male verwenden. Um eine Funktion zu verwenden, _rufen_ Sie sie _auf_. Sie können sie von verschiedenen Stellen im Programm aufrufen.

## Erstellen einer Funktion

Um eine Funktion zu erstellen, schreiben Sie das Schlüsselwort `sub`. Danach schreiben Sie den Namen der Funktion. Setzen Sie den Körper der Funktion in geschweifte Klammern.

```raku
sub greet {
    say 'Hallo, Welt!';
}
```

## Verwenden einer Funktion

Um die Funktion zu verwenden, schreiben Sie einfach ihren Namen. Schreiben Sie ihn dorthin, wo Sie die Funktion aufrufen wollen. In Raku können Sie die Funktion vor dieser Stelle erstellen. Sie können sie auch nach dieser Stelle erstellen.

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

Jetzt sehen wir uns mehr zum Erstellen und Verwenden von Funktionen an.

{% include nav.html %}
