---
title: Die Symbole auflisten
---

{% include menu.html %}

## Problem

Hier ist ein Modul in der Datei `Circle.rakumod`. Es hat zwei `our`-Variablen:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Schreibe ein Programm. Es benutzt das Modul. Zuerst gibt es die Zahl der Namen im Package des Moduls aus. Dann gibt es die Namen aus. Sie müssen in alphabetischer Reihenfolge sein.

## Beispiel

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
