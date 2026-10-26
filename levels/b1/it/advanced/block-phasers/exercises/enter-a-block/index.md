---
title: Entrare in un blocco
---

{% include menu.html %}

## Problema

`FIRST` viene eseguito una sola volta, ma un phaser `ENTER` viene eseguito *ogni volta* che si entra nel blocco. E un ciclo entra di nuovo nel suo corpo a ogni passaggio.

Scrivi un ciclo su `1..2`. Dentro il ciclo, metti un phaser `ENTER` che stampa `--entering`. Aggiungi anche un'istruzione normale che stampa `body` con il numero corrente. Nota che `--entering` appare una volta a ogni passaggio del ciclo.

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
