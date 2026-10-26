---
title: Eseguire i test
translations_gpt:
---

{% include menu.html %}

Un file di test è solo un programma Raku. Quindi puoi eseguirlo come ogni altro programma:

```
raku t/01-basic.rakutest
```

Stampa il suo output TAP sullo schermo. Ma forse hai più di uno o due file. Allora ti serve un _test runner_. Esegue tutti i test di una directory. Poi fa un breve riassunto dei risultati. Il test runner di Raku è `prove6`:

```
prove6 t/
```

Questo esegue ogni file di test sotto `t/`. Mostra quanti file e quanti test sono passati. Alla fine dà un solo risultato per tutto: successo o fallimento. È molto più facile da leggere del TAP grezzo di ogni file.

Una distribuzione può avere un `META6.json`. Allora lo strumento per i moduli esegue i suoi test per te:

```
zef test .
```

`zef test` trova la directory `t/`. Esegue tutti i test e mostra il risultato. La stessa cosa succede in automatico prima di installare una distribuzione. Quindi i test hanno due compiti. Tu li esegui con `prove6` mentre lavori al tuo codice. E l'ecosistema li esegue prima dell'installazione di una distribuzione. Così controlla la distribuzione.

> I file di test hanno l'estensione `.rakutest` o `.t`. Di solito il loro nome inizia con un numero, per esempio `t/01-basic.rakutest`.

{% include nav.html %}
