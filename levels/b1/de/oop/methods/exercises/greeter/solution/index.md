---
title: 'Lösung: Ein umgedrehtes Wort'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Du findest den Quellcode in der Datei [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Ausgabe

```
ukaR
```

## Kommentare

1. Die Methode `reversed` holt den eigenen `text` des Objekts über seinen Accessor, `$.text`. Dann ruft sie darauf das eingebaute `flip` auf, das die Zeichenkette umdreht.

1. Die Methode wird direkt auf dem neuen `Word`-Objekt aufgerufen. Nichts wird im Objekt zurückgespeichert. `reversed` berechnet nur einen neuen Wert aus dem Attribut und gibt ihn zurück.

1. Beachten Sie, dass Sie innerhalb der Klasse den Accessor nicht brauchen. Sie können die Variable direkt lesen:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
