---
title: 'Quiz: Operazioni booleane'
---

{% include menu.html %}

In ogni sezione qui sotto, seleziona la risposta che mostra che cosa stampa il programma.

## 1

Ecco il programma:

```raku
my $value = True && False;
say $value;
```

Cosa stampa?

{:.quiz}
0 | True
1 | False

## 2 

Cosa stampa il secondo programma?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

Qual è l'output di questo programma?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Commenti

Il secondo e il terzo programma hanno espressioni con tre valori booleani. Il risultato dipende dall'ordine in cui Raku fa le operazioni. L'operatore `&&` ha una precedenza più alta di `||`, quindi Raku lo fa per primo.

{% include nav.html %}
