---
title: Übung ’Eine Schachtel mit Größe‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Erstellen Sie eine Rolle `Sized` mit einer Methode `describe`. Die Methode gibt die Zeichenkette `size is <size>` zurück. Für die Größe benutzt sie `self.size`.

Erstellen Sie dann eine Klasse `Box`. Sie erfüllt die Rolle `Sized` und hat ein Attribut `size`. Erstellen Sie eine Schachtel mit der Größe `10`. Rufen Sie `describe` auf ihr auf und geben Sie das Ergebnis aus. Geben Sie in einer zweiten Zeile das Ergebnis von `~~ Sized` für die Schachtel aus. Das zeigt, ob die Schachtel als Trägerin der Rolle zählt.

## Beispiel

Das Programm gibt aus:

```
size is 10
True
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
