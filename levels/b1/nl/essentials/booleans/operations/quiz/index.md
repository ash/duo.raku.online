---
title: 'Quiz: Boolean bewerkingen'
---

{% include menu.html %}

Kies in elke sectie hieronder het antwoord dat laat zien wat het programma afdrukt.

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

Wat is de uitvoer van dit programma?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Opmerkingen

Het tweede en derde programma hebben uitdrukkingen met drie Booleaanse waarden. Het resultaat hangt af van de volgorde waarin Raku de operaties uitvoert. De operator `&&` heeft een hogere prioriteit dan `||`, dus Raku voert hem eerst uit.

{% include nav.html %}
