---
title: 'Lösung: Stellen Sie der Meldung etwas voran'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 Du findest den Quellcode in der Datei [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Ausgabe

```
Error: timeout
```

## Kommentare

1. Das Ausnahmeobjekt hat eine Methode `.message`. Sie gibt den Text zurück, den Sie an `die` übergeben haben.

1. Wir setzen `Error: ` vor diesen Text. Das ergibt die fertige Zeile. Das Ausnahmeobjekt ist einfach ein Wert. Also können Sie seine Meldung so verwenden, wie Sie möchten.

{% include nav.html %}
