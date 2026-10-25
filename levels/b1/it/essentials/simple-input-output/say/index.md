---
title: Output con `say`
---

{% include menu.html %}

La funzione `say` stampa valori sul flusso di output standard, `STDOUT`. Si chiama anche subroutine, o semplicemente routine. Se esegui il programma da un terminale, l'output appare lì. Con i servizi online, va in un'area speciale della pagina web.

Ecco un esempio di utilizzo di `say`:

```raku
say 42;
```

Questa riga può essere parte di un programma più grande o l'intero programma. Naturalmente, stampa `42` sull'output.

Lavoriamo ora con le stringhe:

```raku
say 'Hello, World!';
```

Ed eccolo: `Hello, World!` sullo schermo.

`say` può prendere più argomenti, quindi possiamo stampare più valori in una volta:

```raku
say 42, 'Hello, World!';
```

Nota solo che le parti sono unite in una sola stringa: `42Hello, World!`. Quindi è meglio aggiungere uno spazio tra loro. Ormai dovresti saper risolvere questo problema. Per esempio, così:

```raku
say 42, ' ', 'Hello, World!';
```

Dopo tutti gli argomenti, `say` aggiunge un carattere di nuova riga all'output.

{% include nav.html %}
