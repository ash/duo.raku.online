---
title: Output con `say`
---

{% include menu.html %}

La funzione `say` stampa valori sul flusso di output standard, `STDOUT`. La chiamano anche subroutine, o solo routine. Esegui il programma in un terminale? Allora vedi l'output lì. Usi un servizio online? Allora l'output va in una parte speciale della pagina web.

Ecco un esempio di utilizzo di `say`:

```raku
say 42;
```

Questa riga può essere una parte di un programma più grande. Può anche essere tutto il programma. Certo, stampa `42` sull'output.

Ora proviamo una stringa:

```raku
say 'Hello, World!';
```

Bene! Ora `Hello, World!` è sullo schermo.

La routine `say` può prendere più di un argomento. Quindi possiamo stampare più valori insieme:

```raku
say 42, 'Hello, World!';
```

Ma guarda l'output. Le sue parti formano una sola stringa: `42Hello, World!`. Quindi è meglio aggiungere uno spazio tra loro. Puoi già risolvere questo problema. Per esempio, così:

```raku
say 42, ' ', 'Hello, World!';
```

La routine `say` stampa tutti gli argomenti. Poi aggiunge un carattere di nuova riga all'output.

{% include nav.html %}
