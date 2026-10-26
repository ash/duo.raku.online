---
title: Eseguire i test
translations_gpt:
---

{% include menu.html %}

Un singolo file di test è solo un programma Raku. Quindi puoi eseguirlo direttamente:

```
raku t/01-basic.rakutest
```

Stampa il suo output TAP sullo schermo. Quando hai più di uno o due file, ti serve un _test runner_. Esegue un'intera directory di test e fa un riassunto dei risultati. Il runner di Raku è `prove6`:

```
prove6 t/
```

Questo esegue ogni file di test sotto `t/` e riporta quanti file e test sono passati. Alla fine c'è un unico risultato complessivo, successo o fallimento. È molto più facile da leggere del TAP grezzo di ciascun file.

Se una distribuzione ha un `META6.json`, lo strumento per i moduli può eseguire i suoi test per te:

```
zef test .
```

`zef test` trova la directory `t/`, esegue i test e riporta il risultato. Esattamente la stessa cosa succede in automatico prima che una distribuzione venga installata. Quindi i test hanno due compiti. Tu li esegui con `prove6` mentre sviluppi. L'ecosistema li esegue per controllare una distribuzione prima che qualcuno la installi.

> I file di test hanno l'estensione `.rakutest` (o `.t`). Di solito hanno dei numeri nel nome, come in `t/01-basic.rakutest`.

{% include nav.html %}
