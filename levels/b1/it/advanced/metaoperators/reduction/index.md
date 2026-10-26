---
title: Meta-operatori di riduzione
---

{% include menu.html %}

Un meta-operatore di riduzione è un normale operatore tra parentesi quadre, come `[+]` o `[*]`. Prende una lista di valori e mette l'operatore tra ogni coppia di essi. In questo modo, riduce tutta la lista a un singolo valore.

Per esempio, `[+]` somma tutti gli elementi di una lista:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

Il codice `[+] @data` è uguale a scrivere l'operatore a mano:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Ogni operatore infisso adatto funziona nello stesso modo. Con `[*]`, ottieni il prodotto della lista. Così puoi usarlo sull'intervallo `1..$n` per calcolare facilmente un fattoriale:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Qui l'intervallo `1..$n` dà i numeri da 1 a 5, e `[*]` li moltiplica: `1 * 2 * 3 * 4 * 5`. Il risultato è _5!_.

Funziona anche per unire stringhe. La riduzione `[~]` unisce una lista di stringhe in una sola:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Puoi persino ridurre gli operatori di confronto. `[<]` ti dice se ogni valore è più grande di quello che lo precede:

```raku
say [<] 1, 2, 3; # True
```

## Riduzione triangolare

Se metti un backslash dentro le parentesi quadre, ottieni una riduzione _triangolare_. Conserva tutti i risultati intermedi, non solo quello finale:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Ogni elemento del risultato è una somma parziale: `1`, poi `1+2`, poi `1+2+3`, e così via. L'ultimo è la somma di tutta la lista.

{% include nav.html %}
