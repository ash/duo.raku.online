---
title: 'Lösung: Ein umgedrehtes Wort'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Die Methode `reversed` holt den `text` des Objekts. Dafür benutzt sie den Accessor `$.text`. Dann ruft sie darauf die eingebaute Methode `flip` auf. `flip` gibt die Zeichenkette rückwärts zurück.

1. Das Programm ruft die Methode direkt auf dem neuen `Word`-Objekt auf. Die Methode speichert nichts. `reversed` macht nur einen neuen Wert aus dem Attribut und gibt ihn zurück.

1. In der Klasse können Sie die Variable auch direkt lesen. Dafür brauchen Sie den Accessor nicht:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
