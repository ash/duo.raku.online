---
title: Phaser di blocco
---

{% include menu.html %}

Raku ha phaser per tutto il programma, ma ne ha anche altri. Questi phaser sono legati alla vita di un singolo blocco o ciclo.

## Entrare e uscire da un blocco

Il phaser `ENTER` viene eseguito ogni volta che il programma entra in un blocco. Il phaser `LEAVE` viene eseguito ogni volta che ne esce. Non importa su quale riga li scrivi:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

L'output mostra che `ENTER` viene eseguito per primo e `LEAVE` per ultimo. Il corpo del blocco viene eseguito tra i due:

```
before block
entering
inside
leaving
after block
```

`LEAVE` è particolarmente utile perché viene eseguito anche se il blocco finisce in anticipo. Questo lo rende un posto affidabile per liberare una risorsa.

Un phaser può contenere un intero blocco `{ }` invece di una sola istruzione. Puoi anche averne diversi. Quando un blocco ha più di un `LEAVE`, questi vengono eseguiti in ordine inverso. L'ultimo che è stato impostato viene eseguito per primo. Così il blocco funziona come uno stack, dall'alto verso il basso:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

Il programma apre per prima la risorsa `A` e la chiude per ultima:

```
open A
open B
work
close B
close A
done
```

Questo ordine “last in, first out” è proprio quello che serve per la pulizia. La cosa che prepari per ultima viene tolta per prima. Il phaser `END` di tutto il programma funziona allo stesso modo. Anche più blocchi `END` vengono eseguiti nell'ordine inverso a quello in cui sono stati scritti.

## Phaser dei cicli

Nei cicli ci sono altri tre phaser per le fasi del ciclo. `FIRST` viene eseguito una volta prima del primo passaggio, e `LAST` una volta dopo l'ultimo. `NEXT` viene eseguito alla fine di ogni passaggio:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Questo è l'output del ciclo:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Come gli altri phaser, `FIRST`, `NEXT` e `LAST` possono stare in qualsiasi punto del codice. Ognuno di loro viene eseguito al proprio momento.

{% include nav.html %}
