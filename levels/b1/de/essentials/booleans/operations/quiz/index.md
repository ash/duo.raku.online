---
title: 'Quiz: Boolesche Operationen'
---

{% include menu.html %}

Wählen Sie in jedem Abschnitt unten die Antwort, die zeigt, was das Programm ausgibt.

## 1

Hier ist das Programm:

```raku
my $value = True && False;
say $value;
```

Was gibt es aus?

{:.quiz}
0 | True
1 | False

## 2 

Was gibt das zweite Programm aus?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

Was ist die Ausgabe dieses Programms?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Kommentare

Das zweite und das dritte Programm haben Ausdrücke mit drei Booleschen Werten. Das Ergebnis hängt von der Reihenfolge ab, in der Raku die Operationen ausführt. Der `&&`-Operator hat eine höhere Priorität als `||`, deshalb führt Raku ihn zuerst aus.

{% include nav.html %}
