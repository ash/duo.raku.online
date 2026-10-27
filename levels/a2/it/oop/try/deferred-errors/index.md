---
title: Non ogni errore è immediato
translations_gpt:
---

{% include menu.html %}

Un'eccezione è un tipo di errore. Di solito un'eccezione sollevata ferma subito il programma. La intercetti con `try`. Ma alcuni errori sembrano solo fatali. Non fermano il tuo programma nel momento in cui succedono. In Raku alcuni fallimenti restano silenziosi. Alcuni reagiscono solo dopo, quando usi il risultato. Altri ti lasciano guardarli, e il tuo programma va avanti. Ne hai già visti due in questa parte. È utile vederli insieme in un solo posto.

**Una divisione per zero.** Non fallisce sulla sua riga. Il programma crea il valore sbagliato e lo tiene in silenzio. Il valore solleva un'eccezione solo quando lo *usi*. Per esempio, lo stampi o lo trasformi in un altro tipo:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

La pagina [Fallimenti morbidi](/it/oop/failures) spiega questa reazione in ritardo. Spiega anche gli oggetti `Failure` che ci stanno dietro.

**Un programma esterno che fallisce.** `run` e `shell` restituiscono un `Proc`. A volte il programma fallisce. Il suo `Proc` non solleva un'eccezione in quel momento. La solleva solo in un caso. Succede quando *butti via* il `Proc` senza gestirlo. Quindi conserva il `Proc` e leggi `.exitcode`. Oppure controlla se è vero o falso. Allora il fallimento resta un valore semplice. Puoi reagire a questo valore. Lo hai visto in [L'oggetto Proc](/it/oop/external-programs/the-proc-object).

I due casi hanno una cosa in comune. Un fallimento può essere *differito*, cioè rimandato a dopo. Allora non fa crollare subito il programma. Diventa un valore. Guardi questo valore quando sei pronto. `try` e il phaser `CATCH` gestiscono gli errori sollevati subito. I due modi di questa pagina gestiscono gli altri errori.

{% include nav.html %}
