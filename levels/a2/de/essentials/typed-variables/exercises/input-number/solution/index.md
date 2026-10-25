---
title: 'Solution: Benutzereingabe in eine Zahl umwandeln'
---

{% include menu.html %}

Das Programm kann sehr einfach sein:

## Code

```raku
my Int $n = prompt 'Geben Sie eine Zahl ein: ';
say $n;
```

🦋 Den Quellcode finden Sie in der Datei [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Beispiel

Führen Sie es aus und geben Sie eine ganze Zahl ein. Die Zahl kann positiv oder negativ sein:

```console
$ raku exercises/typed-variables/input-number.raku
Geben Sie eine Zahl ein: -42
-42
```

## Kommentare

Wir haben [schon gesehen](/de/essentials/typed-variables/allomorphs), dass `prompt` einen `IntStr`-Wert zurückgibt. Sie können diesen Wert einer `Int`-Variablen zuweisen. Sie müssen ihn nicht umwandeln.

Aber seien Sie vorsichtig. Manchmal geben Sie eine Zeichenkette ein, die Raku nicht in eine ganze Zahl umwandeln kann. Dann endet das Programm mit einer Ausnahme.

{% include nav.html %}
