---
title: 'Solution: Lebensphase nach Alter'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Diese Lösung hat zwei Arten von `when`. Das erste ist eine *Bedingung*, `$_ < 0`. Hier ist `$_` das Thema von `given`. Diese Bedingung fängt die Alter ab, die keinen Sinn ergeben. Die anderen `when`-Blöcke sind *Bereiche*. Sie teilen die richtigen Alter in Lebensphasen ein.

1. Die Reihenfolge ist wichtig. Die Prüfung auf ein negatives Alter kommt zuerst. Also läuft sie vor allen Bereichen. Der Wert `30` liegt in `20..64`. Also gibt das Programm `adult` aus.

1. Der `default`-Block ist für jedes Alter ab 65 Jahren. Keiner der Bereiche in der Liste hat diese Alter.

Es gibt auch einen anderen Weg. Lass `default` die *ungültige* Eingabe abfangen. Liste jede bekannte Lebensphase auf. Schreibe `senior` als die Bedingung `$_ >= 65`. Alles andere ist ungültig, zum Beispiel ein negatives Alter:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Hier bedeutet `default` wirklich „nichts davon“. Welche Version ist besser? Du kannst wählen. Ist der ungültige Fall selten? Dann setze die Prüfung an den Anfang. Listest du alle gültigen Lebensphasen klar auf? Dann mache den ungültigen Fall zum `default`.

{% include nav.html %}
