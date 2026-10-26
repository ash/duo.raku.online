---
title: 'Solution: Lebensphase nach Alter'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 Du findest den Quellcode in der Datei [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Ausgabe

```
adult
```

## Kommentare

1. Diese Lösung mischt zwei Arten von `when`. Das erste ist eine *Bedingung*, `$_ < 0`, wobei `$_` das Thema ist, das `given` setzt. Sie sortiert die ungültigen Alter aus. Die übrigen sind *Bereiche*, die die gültigen Alter in Lebensphasen einteilen.

1. Die Reihenfolge ist wichtig. Die Prüfung auf ein negatives Alter kommt zuerst. Deshalb läuft sie, bevor irgendein Bereich geprüft wird. Der Wert `30` liegt in `20..64`, also gibt das Programm `adult` aus.

1. Der `default`-Block deckt jedes Alter ab 65 Jahren ab. Keiner der Bereiche in der Liste fängt diese Alter ab.

Du könntest das auch umdrehen und stattdessen `default` die *ungültige* Eingabe abfangen lassen. Liste jede bekannte Lebensphase auf, auch `senior` als die Bedingung `$_ >= 65`. Behandle alles, was übrig bleibt, zum Beispiel ein negatives Alter, als ungültig:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Hier ist `default` ein echter Zweig für „nichts davon“. Welche Version sich besser liest, ist Geschmackssache. Setze die Prüfung an den Anfang, wenn der ungültige Fall eine Ausnahme ist. Oder mache ihn zum `default`, wenn alle gültigen Lebensphasen klar aufgelistet sind.

{% include nav.html %}
