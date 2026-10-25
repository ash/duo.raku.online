---
title: 'Quiz: Boolean bewerkingen'
---

{% include menu.html %}

Hieronder staan een paar programma's. Wat drukt elk programma af? Kies het juiste antwoord.

## 1

Hier is het programma:

```raku
my $value = True && False;
say $value;
```

Wat drukt het af?

{:.quiz}
0 | True
1 | False

## 2 

Wat drukt het tweede programma af?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

Wat drukt dit programma af?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Opmerkingen

Het tweede en derde programma hebben uitdrukkingen met drie Booleaanse waarden. Het resultaat hangt af van de volgorde van de operaties. De operator `&&` heeft een hogere prioriteit dan `||`. Dus doet Raku `&&` eerst.

{% include nav.html %}
