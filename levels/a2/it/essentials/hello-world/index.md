---
title: Ciao, Mondo!
---

{% include menu.html %}

Bene! Ora conosciamo le cose di base. Possiamo parlare con Raku e vedere la sua risposta. Allora passiamo al primo vero programma: 'Ciao, Mondo!'.

```raku
say 'Ciao, Mondo!';
```

Presto impariamo le basi delle funzioni. Ma prima, ecco altri modi per scrivere questo programma.

Primo, puoi mettere l'argomento della funzione tra parentesi:

```raku
say('Ciao, Mondo!');
```

Secondo, puoi usare altre funzioni: `put` e `print`. Anche qui, puoi scriverle con o senza parentesi:

```raku
put 'Ciao, Mondo!';

print("Ciao, Mondo!\n");
```

Con `print`, devi aggiungere tu il carattere di nuova riga. Questo carattere inizia una nuova riga. Mettilo alla fine del messaggio. Ma non preoccuparti. Vediamo tutti questi dettagli più avanti.

Prima di andare avanti, ecco un altro modo interessante. Puoi chiamare la funzione come un metodo. Chiamala direttamente sulla stringa:

```raku
'Ciao, Mondo!'.say;
```

{% include nav.html %}
