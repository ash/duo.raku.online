---
title: Niet elke fout is onmiddellijk
translations_gpt:
---

{% include menu.html %}

Een exceptie is een soort fout. Normaal stopt een geworpen exceptie het programma meteen. Je vangt hem met `try`. Maar sommige fouten lijken alleen fataal. Ze stoppen je programma niet op het moment dat ze gebeuren. In Raku blijven sommige mislukkingen stil. Sommige reageren pas later, als je het resultaat gebruikt. Bij andere kun je ernaar kijken, en je programma gaat door. Je hebt er in dit deel al twee gezien. Het is handig om ze samen op één plek te zien.

**Een deling door nul.** Die gaat niet mis op haar eigen regel. Het programma maakt de slechte waarde en houdt die stil vast. De waarde werpt pas een exceptie als je haar *gebruikt*. Je drukt haar bijvoorbeeld af, of je zet haar om naar een ander type:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

De pagina [Zachte mislukkingen](/nl/oop/failures) legt deze late reactie uit. Die legt ook de `Failure`-objecten erachter uit.

**Een mislukkend extern programma.** `run` en `shell` geven een `Proc` terug. Soms mislukt het programma. Zijn `Proc` werpt op dat moment geen exceptie. Dat gebeurt alleen in één geval. Dat is als je de `Proc` *weggooit* zonder hem af te handelen. Bewaar de `Proc` dus en lees `.exitcode`. Of kijk of hij waar of onwaar is. Dan blijft de mislukking een gewone waarde. Je kunt erop reageren. Je zag dit in [Het Proc-object](/nl/oop/external-programs/the-proc-object).

Beide gevallen hebben één ding gemeen. Een mislukking kan *uitgesteld* worden, of naar later geschoven. Dan laat ze het programma niet meteen crashen. Ze wordt een waarde. Je bekijkt deze waarde als je er klaar voor bent. `try` en de `CATCH`-faser handelen fouten af die meteen geworpen worden. De twee manieren op deze pagina handelen de andere fouten af.

{% include nav.html %}
