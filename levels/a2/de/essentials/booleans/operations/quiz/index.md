---
title: 'Quiz: Boolesche Operationen'
---

{% include menu.html %}

Unten sind einige Programme. Was gibt jedes Programm aus? Wählen Sie die richtige Antwort.

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

Was gibt dieses Programm aus?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Kommentare

Das zweite und das dritte Programm haben Ausdrücke mit drei Booleschen Werten. Das Ergebnis hängt von der Reihenfolge der Operationen ab. Der `&&`-Operator hat eine höhere Priorität als `||`. Deshalb führt Raku `&&` zuerst aus.

{% include nav.html %}
