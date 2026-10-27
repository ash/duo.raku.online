---
title: Non ogni errore è immediato
translations_gpt:
---

{% include menu.html %}

Di norma, un'eccezione sollevata ferma subito il programma. La intercetti con `try`. Ma non tutti gli errori che sembrano fatali fermano davvero subito il tuo programma. Raku ha fallimenti che restano silenziosi. Alcuni reagiscono solo quando usi il risultato. Altri ti lasciano controllarli e andare avanti. Ne hai già visti due in questa parte. Vale la pena raccoglierli in un unico posto.

**Una divisione per zero.** Dividere per zero non fallisce dove è scritto. Il valore sbagliato viene creato e tenuto in silenzio. Solleva un'eccezione solo quando lo *usi*. Per esempio, succede quando lo stampi o lo converti in un altro tipo:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

Questo comportamento ritardato e gli oggetti `Failure` che ci stanno dietro sono l'argomento di [Fallimenti morbidi](/it/oop/failures).

**Un programma esterno che fallisce.** Supponiamo che `run` o `shell` restituisca un `Proc` per un programma fallito. Questo `Proc` non solleva un'eccezione quando viene creato. La solleva solo se lo *butti via* senza gestirlo. Conservalo e leggi `.exitcode`, o controllalo come Booleano. Allora il fallimento resta un valore semplice a cui puoi reagire. Lo hai visto in [L'oggetto Proc](/it/oop/external-programs/the-proc-object).

I due casi hanno una cosa in comune. Un fallimento può essere *differito*, cioè rimandato a più tardi. Diventa un valore che controlli quando sei pronto. Non fa crollare subito il programma. `try` e il phaser `CATCH` si occupano degli errori sollevati subito. I modi di questa pagina si occupano degli errori che non vengono sollevati subito.

{% include nav.html %}
