---
title: Die Konstante lesen
---

{% include menu.html %}

## Problem

Du hast ein Modul in einer Datei `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Schreibe ein Programm, das dieses Modul mit `need` lädt, nicht mit `use`. Es soll den Wert von `$pi` ausgeben. Denk daran, dass `need` keine Namen importiert. Also erreichst du die Variable über den Namen des Moduls.

## Beispiel

```console
$ raku -I. read-pi.raku
3.14
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
