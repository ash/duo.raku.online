---
title: 'Lösung: Fangen Sie den Fehler'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Wenn der Block ohne Fehler läuft, ergibt `try` einfach den Wert des Blocks. Also enthält `$ok` den Wert `42`.

1. Das `die` im zweiten Block wirft eine Ausnahme. Also ergibt dieser Block einen undefinierten Wert, und `$bad.defined` ist `False`.

1. Die gefangene Ausnahme wird in der besonderen Variablen `$!` gespeichert. `$!.message` gibt den Text zurück, den sie bekommen hat: `broken`.

{% include nav.html %}
