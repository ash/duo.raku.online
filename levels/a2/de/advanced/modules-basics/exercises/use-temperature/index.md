---
title: Den Konverter verwenden
---

{% include menu.html %}

## Problem

Hier ist ein Modul in der Datei `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Schreibe ein separates Programm. Es benutzt dieses Modul. Das Programm bekommt eine Temperatur in Celsius als Kommandozeilenargument. Es rechnet die Temperatur mit dem Modul in Fahrenheit um. Dann gibt es das Ergebnis aus.

## Beispiel

```console
$ raku -I. temperature.raku 100
212
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
