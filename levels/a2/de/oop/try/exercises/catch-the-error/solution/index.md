---
title: 'Lösung: Fangen Sie den Fehler'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Du findest den Quellcode in der Datei [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Ausgabe

```
42
False
broken
```

## Kommentare

1. Hier läuft der Block ohne Fehler. Dann ergibt `try` einfach den Wert des Blocks. Also enthält `$ok` den Wert `42`.

1. Das `die` im zweiten Block wirft eine Ausnahme. Also ergibt dieser Block einen undefinierten Wert. `$bad.defined` ist `False`.

1. Raku speichert die gefangene Ausnahme in der besonderen Variablen `$!`. `$!.message` gibt den Text der Ausnahme zurück, `broken`.

{% include nav.html %}
