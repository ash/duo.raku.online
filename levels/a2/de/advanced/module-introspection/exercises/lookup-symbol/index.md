---
title: Ein Symbol nachschlagen
---

{% include menu.html %}

## Problem

Du kannst die Namen eines Packages auflisten. Du kannst auch einen Namen auf andere Weise bekommen. Benutze den Namen als Schlüssel im Stash des Packages. Der Stash ist seine Tabelle mit Namen. Mit einem Schlüssel kann das Programm den Namen wählen, während es läuft. Hier ist ein Modul, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schreibe ein separates Programm. Es lädt das Modul. Dann gibt es den Wert von `$pi` aus. Es muss `$pi` im Stash mit `Circle::{'$pi'}` finden. Benutze nicht den vollen Namen `$Circle::pi`.

## Beispiel

Führe das Programm mit dem Modul im Suchpfad aus. Es gibt Folgendes aus:

```console
$ raku -I. lookup.raku
3.14
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
