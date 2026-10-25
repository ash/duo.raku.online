---
title: 'Solutio: Veri et falsi catenae'
---

{% include menu.html %}

Hoc exercitium simile est [priori](../../true-false-numbers). Sed hoc tempore munus paulo difficilius est. Hic plura fila `False` videri possunt. Ea spectemus.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Ex his omnibus filis, solum filum vacuum fit `False`. Omnia alia fila fiunt `True`. Etiam filum cum solis spatiis fit `True`. Filum cum charactere `0` quoque `True` est.

🦋 Totum programma cum exemplo supra inveni potes in archivo [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
