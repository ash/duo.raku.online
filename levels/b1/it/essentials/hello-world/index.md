---
title: Ciao, Mondo!
---

{% include menu.html %}

Bene, abbiamo imparato le basi. Ora possiamo parlare con Raku e vedere la sua risposta. Quindi andiamo subito al primo vero programma, 'Ciao, Mondo!'.

```raku
say 'Ciao, Mondo!';
```

Presto impareremo le basi delle funzioni. Ma prima vediamo alcune opzioni diverse per questo programma.

Prima di tutto, puoi mettere l'argomento della funzione tra parentesi:

```raku
say('Ciao, Mondo!');
```

In secondo luogo, puoi usare altre due funzioni, `put` e `print`. Anche qui, puoi scriverle con o senza parentesi:

```raku
put 'Ciao, Mondo!';

print("Ciao, Mondo!\n");
```

Nota che con `print` devi aggiungere tu il carattere di nuova riga. Va alla fine del messaggio. Ma non preoccuparti, vedremo tutti questi dettagli più avanti.

Prima di andare avanti, ecco un'altra opzione interessante. Puoi chiamare una funzione come un metodo, direttamente sulla stringa:

```raku
'Ciao, Mondo!'.say;
```

{% include nav.html %}
