---
title: Meta-operatori di riduzione
---

{% include menu.html %}

Scrivi un meta-operatore di riduzione come un operatore normale tra parentesi quadre. Due esempi sono `[+]` e `[*]`. Prende una lista di valori. Mette l'operatore tra ogni coppia di valori. Così tutta la lista diventa un solo valore.

Per esempio, `[+]` somma tutti gli elementi di una lista:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` è come scrivere tu tutti gli operatori:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Anche altri operatori infissi possono funzionare così. Con `[*]`, ottieni il prodotto della lista. Usalo con l'intervallo `1..$n`. È un modo facile per trovare un fattoriale:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Qui l'intervallo `1..$n` dà i numeri da 1 a 5. Poi `[*]` li moltiplica: `1 * 2 * 3 * 4 * 5`. Questo è _5!_.

Funziona anche con le stringhe. La riduzione `[~]` unisce una lista di stringhe in una sola stringa:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Puoi ridurre anche gli operatori di confronto. `[<]` ti dice se ogni valore è più grande del valore prima:

```raku
say [<] 1, 2, 3; # True
```

## Riduzione triangolare

Metti un backslash dentro le parentesi quadre. Allora ottieni una riduzione _triangolare_. Tiene il risultato di ogni passo, non solo l'ultimo risultato:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Ogni elemento del risultato è la somma dei primi numeri: `1`, poi `1+2`, poi `1+2+3`, e così via. L'ultimo elemento è la somma di tutta la lista.

{% include nav.html %}
