---
title: Heredoc
---

{% include menu.html %}

## Problema

Heredoc *interpolans* adhibe ut epistulam aedifices quae emptionem confirmat. Paucas variabiles adhibe: emptorem `$name`, rem `$item`, pretium `$price` et numerum `$count`. Pretium est pro una re. Heredoc variabiles interpolare debet. *Etiam* summam in textu computare debet, cum claustro inserto `{ … }` (`$count * $price`).

Corpus heredoc indenta ut cum codice circa id congruat. Terminatorem claudentem cum textu congruere fac. Tum indentatio in output non apparet. Eventum imprime.

## Exemplum

Sume `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` et `$count = 3`. Tum programma haec imprimit, sine spatiis in initio:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
