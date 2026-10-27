---
title: Übung ’Geben Sie eine Variable an ein Kind weiter‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Legen Sie eine Datei `notes.txt` an und schreiben Sie ein paar Zeilen hinein. Speichern Sie ihren Namen in einer Umgebungsvariablen `NOTES`. Führen Sie dann mit `shell` den Befehl `wc -l` aus und nehmen Sie den Dateinamen aus `$NOTES`. Das Kindprogramm zählt dann die Zeilen und gibt die Zahl aus. Löschen Sie die Datei zum Schluss aus Raku heraus, mit `unlink` und nicht über die Shell.

## Beispiel

Das Programm gibt aus:

```
3
```

Es lässt auch keine `notes.txt` zurück.

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
