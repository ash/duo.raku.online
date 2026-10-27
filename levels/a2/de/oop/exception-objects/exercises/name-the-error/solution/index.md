---
title: 'Lösung: Nennen Sie den Fehler'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Du findest den Quellcode in der Datei [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Ausgabe

```
X::AdHoc
sub failed
```

## Kommentare

1. Das `die` passiert in `risky`. Aber die Ausnahme geht nach oben zum Aufrufer. Der Aufrufer ist der Code, der `risky` aufgerufen hat. Hier ist das der Block. Das `CATCH` in diesem Block behandelt die Ausnahme. So funktioniert Fehlerbehandlung normalerweise. Der Code, der einen Fehler behandelt, ist seine Behandlung. Der Fehler und seine Behandlung können in verschiedenen Routinen sein.

1. Ein einfaches `die` mit einer Zeichenkette erzeugt eine `X::AdHoc`-Ausnahme. `.^name` zeigt diesen Typ. `.message` gibt den Text zurück, den wir `die` gegeben haben.

{% include nav.html %}
