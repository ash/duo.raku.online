---
title: Cross, hyper e negati
---

{% include menu.html %}

Raku ha altri meta-operatori, non solo la riduzione e lo zip. Qui ne impari tre.

## Cross — `X`

Il meta-operatore cross `X` prende due liste e crea delle coppie. Qui **ogni** elemento di una lista va con **ogni** elemento dell'altra. Questo si chiama prodotto cartesiano:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Come lo zip, anche `X` può prendere un operatore. Allora l'operatore lavora su ogni coppia. `X~` unisce ogni coppia in una stringa. `X*` moltiplica i due numeri:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Lo zip scorre due liste fianco a fianco. Il cross le unisce in tutti i modi possibili.

## Hyper — `»…«`

Un meta-operatore hyper usa un operatore su **ogni elemento** di una lista. L'operatore sta tra le frecce `»…«`. Con soli caratteri ASCII, scrivi `>>…<<`. Con due liste, lavora elemento per elemento, come lo zip. A volte un lato ha un solo valore. Allora usa questo valore con ogni elemento della lista:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Le due frecce possono puntare in direzioni diverse. La direzione conta quando le liste hanno lunghezze diverse. Se una freccia punta **verso** una lista, Raku può ripetere questa lista. Allora la lista è lunga come l'altra. Ecco le quattro combinazioni in ASCII, con `<<` e `>>`:

* `>>op<<` — Raku non ripete nessuna lista. Le liste devono avere la stessa lunghezza. Altrimenti c'è un errore.
* `>>op>>` — Raku ripete la lista **destra**. Così diventa lunga come la sinistra.
* `<<op<<` — Raku ripete la lista **sinistra**. Così diventa lunga come la destra.
* `<<op>>` — Raku ripete la lista **più corta**. Così diventa lunga come la più lunga.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 si ripete come 10, 20, 10, 20
```

C'è anche una forma con un solo operando. Chiama un metodo su ogni elemento. `>>.uc` cambia ogni stringa in lettere maiuscole:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Un'operazione hyper dice anche un'altra cosa a Raku. Raku *può* fare il lavoro in parallelo. Allora diverse parti del lavoro avvengono nello stesso momento. Più avanti imparerai il metodo simile `.hyper`. È nella [sezione sulla programmazione concorrente](/it/paradigms/hyper-race).

## Negato — `!`

Metti `!` prima di un operatore di confronto. Allora ottieni il risultato opposto. Conosci già `!=`, cioè “diverso da”. È solo questo meta-operatore con `==`. Anche altri operatori danno `True` o `False`, come `eq` e `%%`. Il meta-operatore funziona con loro nello stesso modo:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — non uguale come stringhe
say 5 !%% 2;     # True  — 5 non è divisibile per 2
```

Quindi `$a !op $b` è solo un modo più pulito di scrivere `!($a op $b)`.

Raku lo fa apposta. Alcune lingue sono piccole e semplici apposta, come l'Esperanto. L'Esperanto cerca di avere un solo modo regolare per dire ogni cosa. Raku è diverso. Ti dà volentieri diversi modi. Così Raku ha il negato `!eq`. Ha anche un operatore speciale `ne`. I due significano esattamente la stessa cosa:

```raku
say 'a' ne 'b'; # True — lo stesso test di 'a' !eq 'b'
```

{% include nav.html %}
