---
title: Übung ’Geben Sie eine Variable an ein Kind weiter‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Legen Sie eine Datei `notes.txt` an. Schreiben Sie ein paar Zeilen hinein. Speichern Sie den Namen der Datei in einer Umgebungsvariablen `NOTES`. Führen Sie dann mit `shell` den Befehl `wc -l` aus. Die Shell nimmt den Dateinamen aus `$NOTES`. So zählt das Kindprogramm die Zeilen und gibt die Zahl aus. Ein Kindprogramm ist ein Programm, das Ihr Programm startet. Löschen Sie am Ende die Datei aus Raku heraus. Nehmen Sie dafür `unlink`, nicht die Shell.

## Beispiel

Das Programm gibt aus:

```
3
```

Danach ist die Datei `notes.txt` weg.

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
