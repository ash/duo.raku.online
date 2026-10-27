---
title: 'Soluzione: Un rombo di classi'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
class A {
}

class B is A {
}

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Trova il programma nel file [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Output

```
(D B C A Any Mu)
```

## Commenti

1. `D` eredita da due genitori in una volta sola: `class D is B is C` li elenca ciascuno con il proprio `is`. Questa è ereditarietà multipla. Insieme, `A`, `B`, `C` e `D` formano un *rombo*. Ci sono due percorsi da `D` fino all'antenato comune `A`.

1. `.^mro` trasforma il rombo in un unico ordine di ricerca lineare. Prima viene `D`, poi i suoi genitori `B` e `C` nell'ordine in cui li hai scritti. Poi viene il comune `A`, e infine `Any` e `Mu`.

1. Sia `B` sia `C` portano ad `A`. Eppure il tipo `A` compare solo **una volta**, e solo dopo tutti e due. È questo il senso di un ordine di risoluzione dei metodi. Ogni tipo viene visitato esattamente una volta. E un genitore non viene mai prima di una figlia che eredita da lui. Quindi Raku trova sempre un metodo in `B` prima di quello che sovrascrive in `A`.

{% include nav.html %}
