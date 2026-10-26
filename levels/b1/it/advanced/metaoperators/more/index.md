---
title: Cross, hyper e negati
---

{% include menu.html %}

Oltre alla riduzione e allo zip, Raku ha diversi altri meta-operatori. A questo punto è utile conoscerne tre.

## Cross — `X`

Il meta-operatore cross `X` prende due liste. Accoppia **ogni** elemento di una con **ogni** elemento dell'altra. Questo si chiama prodotto cartesiano:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Come lo zip, può avvolgere un operatore, che poi lavora su ogni coppia. `X~` unisce ogni coppia in una stringa, e `X*` moltiplica i valori:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Lo zip scorre due liste fianco a fianco, mentre il cross le combina in tutti i modi possibili.

## Hyper — `»…«`

Un meta-operatore hyper applica un operatore a **ogni elemento** di una lista. L'operatore va dentro le parentesi a punta `»…«`, o nella forma ASCII `>>…<<`. Con due liste, lavora elemento per elemento, come lo zip. Con un solo valore da un lato, estende quel valore a tutta la lista:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Le due frecce non devono per forza puntare nella stessa direzione. La loro direzione decide cosa succede quando le liste hanno lunghezze diverse. Se una freccia punta **verso** una lista, quella lista può ripetersi fino alla lunghezza dell'altra. Ecco le quattro combinazioni, scritte in ASCII con `<<` e `>>`:

* `>>op<<` — nessuna lista viene ripetuta, quindi le liste devono già avere la stessa lunghezza, altrimenti c'è un errore;
* `>>op>>` — la lista **destra** si ripete fino alla lunghezza della sinistra;
* `<<op<<` — la lista **sinistra** si ripete fino alla lunghezza della destra;
* `<<op>>` — la lista **più corta** si ripete fino alla lunghezza della più lunga.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 si ripete come 10, 20, 10, 20
```

C'è anche una forma unaria, con un solo operando. Chiama un metodo su ogni elemento. `>>.uc` trasforma ogni stringa in maiuscolo:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Le operazioni hyper mostrano anche che il lavoro *può* essere fatto in parallelo. Vedrai il metodo simile `.hyper` più avanti, nella [sezione sulla programmazione concorrente](/it/paradigms/hyper-race).

## Negato — `!`

Se metti `!` prima di un operatore di confronto, ottieni il risultato opposto. Il noto `!=` (diverso da) è proprio questo meta-operatore usato con `==`. Lo stesso funziona per altri operatori booleani, come `eq` e `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — non uguale come stringhe
say 5 !%% 2;     # True  — 5 non è divisibile per 2
```

In breve, `$a !op $b` è solo un modo più ordinato di scrivere `!($a op $b)`.

Questo è voluto. Alcune lingue, come l'Esperanto, sono piccole e semplici apposta. Cercano di avere un solo modo regolare per dire ogni cosa. Raku è diverso e ti dà volentieri diversi modi. Così il negato `!eq` esiste proprio accanto all'operatore speciale `ne`. I due significano esattamente la stessa cosa:

```raku
say 'a' ne 'b'; # True — lo stesso test di 'a' !eq 'b'
```

{% include nav.html %}
