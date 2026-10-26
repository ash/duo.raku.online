---
title: Die Konstante lesen
---

{% include menu.html %}

## Problem

Hier ist ein Modul in der Datei `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schreibe ein Programm. Es lädt dieses Modul mit `need`, nicht mit `use`. Dann gibt es den Wert von `$pi` aus. Denk daran: `need` importiert keine Namen. Also kommst du über den Namen des Moduls an die Variable.

## Beispiel

```console
$ raku -I. read-pi.raku
3.14
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
