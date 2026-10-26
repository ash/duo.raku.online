---
title: Ein Symbol nachschlagen
---

{% include menu.html %}

## Problem

Du kannst die Namen eines Packages nicht nur auflisten, sondern auch einen einzelnen Namen erreichen. Dazu benutzt du den Namen als Schlüssel im Stash des Packages. Dann muss der Name nicht fest im Code stehen. Hier ist ein Modul, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schreibe ein separates Programm, das das Modul lädt und den Wert von `$pi` ausgibt. Es soll `$pi` im Stash mit `Circle::{'$pi'}` finden. Es soll nicht den qualifizierten Namen `$Circle::pi` benutzen.

## Beispiel

Wenn du das Programm mit dem Modul im Suchpfad ausführst, gibt es Folgendes aus:

```console
$ raku -I. lookup.raku
3.14
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
