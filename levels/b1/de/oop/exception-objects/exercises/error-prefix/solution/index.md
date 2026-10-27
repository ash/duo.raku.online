---
title: 'Lösung: Stellen Sie der Meldung etwas voran'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Methode `.message` des Ausnahmeobjekts gibt den Text zurück, den `die` bekommen hat.

1. Wenn Sie ihn hinten an `Error: ` hängen, ergibt das die fertige Zeile. Das Ausnahmeobjekt ist einfach ein Wert. Also können Sie seine Meldung so verwenden, wie Sie möchten.

{% include nav.html %}
