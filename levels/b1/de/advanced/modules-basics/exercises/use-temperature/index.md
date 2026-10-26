---
title: Den Konverter verwenden
---

{% include menu.html %}

## Problem

Du hast ein Modul in einer Datei `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Schreibe ein separates Programm, das dieses Modul benutzt. Das Programm bekommt eine Celsius-Temperatur als Kommandozeilenargument. Es rechnet sie mit dem Modul in Fahrenheit um und gibt das Ergebnis aus.

## Beispiel

```console
$ raku -I. temperature.raku 100
212
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
