---
title: 'Quiz: Booleana operationes'
---

{% include menu.html %}

In unaquaque sectione infra, selige responsum quod ostendit quid programma imprimat.

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

Quid est output huius programmatis?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | Verum
0 | Falsum

{% include quiz.html %}

## Commentarii

Secundum et tertium programma expressiones cum tribus valoribus Booleanis habent. Eventus ex ordine pendet quo Raku operationes facit. Operator `&&` maiorem praecedentiam habet quam `||`, itaque Raku eum primum facit.

{% include nav.html %}
