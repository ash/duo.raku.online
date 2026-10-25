---
title: 'Quiz: Operazioni booleane'
---

{% include menu.html %}

Qui sotto ci sono alcuni programmi. Che cosa stampa ogni programma? Scegli la risposta corretta.

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

Che cosa stampa questo programma?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Commenti

Il secondo e il terzo programma hanno espressioni con tre valori booleani. Il risultato dipende dall'ordine delle operazioni. L'operatore `&&` ha una precedenza più alta di `||`. Quindi Raku fa prima `&&`.

{% include nav.html %}
