---
title: Entrare in un blocco
---

{% include menu.html %}

## Problema

`FIRST` parte solo una volta. Un phaser `ENTER` è diverso. Parte *ogni volta* che il programma entra nel blocco. Un ciclo entra di nuovo nel suo corpo a ogni giro.

Fai un ciclo su `1..2`. Dentro il ciclo, metti un phaser `ENTER`. Stampa `--entering`. Metti lì anche un'istruzione normale. Stampa `body` e il numero corrente. Vedi `--entering` una volta a ogni giro.

## Esempio

Il programma stampa:

```
--entering
body 1
--entering
body 2
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
