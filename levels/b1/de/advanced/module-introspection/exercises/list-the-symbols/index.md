---
title: Die Symbole auflisten
---

{% include menu.html %}

## Problem

Du hast ein Modul in der Datei `Circle.rakumod`, das zwei `our`-Variablen definiert:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Schreibe ein Programm, das das Modul benutzt. Zuerst gibt es aus, wie viele Namen das Package des Moduls definiert. Dann gibt es die Namen selbst in alphabetischer Reihenfolge aus.

## Beispiel

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
