---
title: 'Solutio: Veri et falsi catenae'
---

{% include menu.html %}

Hoc exercitium simile est [priori](../../true-false-numbers). Sed hoc tempore munus paulo difficilius est. Plura sunt fila ‘suspecta’, quae ut `False` tractari possunt. Ea exploremus.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Ex his omnibus filis, solum filum vacuum ad `False` convertitur. Omnia alia fila fiunt `True`, etiam si sola spatia vel characterem `0` continent.

🦋 Totum programma cum exemplo supra inveni potes in archivo [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
