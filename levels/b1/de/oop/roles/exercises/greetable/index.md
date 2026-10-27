---
title: Übung ’Eine Schachtel mit Größe‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Definieren Sie eine Rolle `Sized` mit einer Methode `describe`. Sie gibt die Zeichenkette `size is <size>` zurück und benutzt dafür `self.size`.

Definieren Sie dann eine Klasse `Box`, die die Rolle `Sized` erfüllt und ein Attribut `size` hat. Erzeugen Sie eine Schachtel mit der Größe `10`. Geben Sie aus, was `describe` für diese Schachtel zurückgibt. Geben Sie in einer zweiten Zeile aus, ob die Schachtel `~~ Sized` ist. Mit anderen Worten: Geben Sie aus, ob Raku sie als Trägerin der Rolle sieht.

## Beispiel

Das Programm gibt aus:

```
size is 10
True
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
