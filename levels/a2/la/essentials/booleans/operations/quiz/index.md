---
title: 'Quiz: Booleana operationes'
---

{% include menu.html %}

Infra sunt aliquot programmata. Quid quodque programma imprimit? Responsum rectum selige.

## 1

Hic est programma:

```raku
my $value = True && False;
say $value;
```

Quid imprimit?

{:.quiz}
0 | Verum
1 | Falsum

## 2 

Quid secundum programma imprimit?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | Verum
0 | Falsum

## 3

Quid hoc programma imprimit?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | Verum
0 | Falsum

{% include quiz.html %}

## Commentarii

Secundum et tertium programma expressiones cum tribus valoribus Booleanis habent. Eventus ex ordine operationum pendet. Operator `&&` maiorem praecedentiam habet quam `||`. Itaque Raku primum `&&` facit.

{% include nav.html %}
