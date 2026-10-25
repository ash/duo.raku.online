---
title: 'Solution: Benutzereingabe in eine Zahl umwandeln'
---

{% include menu.html %}

Das Programm kann so einfach sein:

## Code

```raku
my Int $n = prompt 'Geben Sie eine Zahl ein: ';
say $n;
```

🦋 Den Quellcode finden Sie in der Datei [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Beispiel

Führen Sie es aus und geben Sie eine ganze Zahl ein, die positiv oder negativ sein kann:

```console
$ raku exercises/typed-variables/input-number.raku
Geben Sie eine Zahl ein: -42
-42
```

## Kommentare

Wie wir [gesehen haben](/de/essentials/typed-variables/allomorphs), gibt `prompt` hier einen `IntStr`-Wert zurück. Sie können ihn ohne Umwandlung einer `Int`-Variablen zuweisen.

Beachten Sie aber, dass manche Zeichenketten nicht in eine ganze Zahl umgewandelt werden können. Wenn Sie so eine Zeichenkette eingeben, endet das Programm mit einer Ausnahme.

{% include nav.html %}
