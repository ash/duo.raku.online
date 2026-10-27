---
title: Niet elke fout is onmiddellijk
translations_gpt:
---

{% include menu.html %}

Standaard stopt een geworpen exceptie het programma meteen. Je vangt hem met `try`. Maar niet elke fout die fataal lijkt, stopt je programma echt meteen. Raku heeft mislukkingen die stil blijven. Sommige reageren pas als je het resultaat gebruikt. Bij andere kun je ze bekijken en gewoon doorgaan. Je hebt er in dit deel al twee gezien. Het loont om ze op één plek bij elkaar te zetten.

**Een deling door nul.** Delen door nul gaat niet mis op de plek waar het staat. De slechte waarde wordt gemaakt en stil bewaard. Ze werpt pas een exceptie wanneer je haar *gebruikt*. Dat gebeurt bijvoorbeeld als je haar afdrukt of omzet naar een ander type:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

Dit uitgestelde gedrag en de `Failure`-objecten erachter zijn het onderwerp van [Zachte mislukkingen](/nl/oop/failures).

**Een mislukkend extern programma.** Stel dat `run` of `shell` een `Proc` teruggeeft voor een mislukt programma. Deze `Proc` werpt geen exceptie op het moment dat hij gemaakt wordt. Dat doet hij alleen als je hem *weggooit* zonder hem af te handelen. Bewaar hem en lees `.exitcode`, of test hem als boolean. Dan blijft de mislukking een gewone waarde waarop je kunt reageren. Je zag dit in [Het Proc-object](/nl/oop/external-programs/the-proc-object).

Beide gevallen hebben één ding gemeen. Een mislukking kan *uitgesteld* worden, dat wil zeggen naar later geschoven. Ze wordt een waarde die je bekijkt wanneer je er klaar voor bent. Ze laat het programma niet meteen crashen. `try` en de `CATCH`-faser gaan over fouten die meteen geworpen worden. De manieren op deze pagina gaan over fouten die niet meteen geworpen worden.

{% include nav.html %}
