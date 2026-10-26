---
title: Phaser di blocco
---

{% include menu.html %}

Conosci già i phaser per tutto il programma. Raku ha anche phaser per un solo blocco o un solo ciclo. Fanno parte della vita di quel blocco o ciclo.

## Entrare in un blocco e uscirne

Il phaser `ENTER` parte ogni volta che il programma entra in un blocco. Il phaser `LEAVE` parte ogni volta che il programma esce dal blocco. Il loro posto nel blocco non conta:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Guarda l'output. `ENTER` parte per primo, e `LEAVE` parte per ultimo. Il corpo del blocco sta tra loro due:

```
before block
entering
inside
leaving
after block
```

`LEAVE` è molto utile. Parte anche quando il blocco finisce in anticipo. Così lì puoi liberare una risorsa senza rischi, come un file aperto.

Un phaser può avere un intero blocco `{ }`, non solo un'istruzione. Puoi anche avere più phaser. Un blocco può avere più di un `LEAVE`. Allora partono in ordine inverso. L'ultimo parte per primo. Funziona come uno stack. L'ultima cosa che entra esce per prima:

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

Il programma apre per prima la risorsa `A`. La chiude per ultima:

```
open A
open B
work
close B
close A
done
```

Questo ordine è “last in, first out”. È proprio l'ordine giusto per la pulizia. L'ultima cosa che prepari è la prima che togli. Il phaser `END` per tutto il programma funziona allo stesso modo. Anche più blocchi `END` partono in ordine inverso.

## Phaser per i cicli

I cicli hanno altri tre phaser. Segnano le fasi del ciclo. `FIRST` parte una volta, prima del primo giro. `LAST` parte una volta, dopo l'ultimo giro. `NEXT` parte alla fine di ogni giro:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Il ciclo stampa:

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

È come per gli altri phaser. Puoi scrivere `FIRST`, `NEXT` e `LAST` in qualsiasi punto del ciclo. Ognuno parte al suo momento.

{% include nav.html %}
