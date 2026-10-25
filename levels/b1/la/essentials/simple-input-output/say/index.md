---
title: 'Output cum `say`'
---

{% include menu.html %}

Functio `say` valores ad fluxum output standardum, `STDOUT`, imprimit. Etiam subrutina vocatur, vel simpliciter rutina. Si programma e terminali curris, output ibi apparet. Cum officiis online, ad aream specialem paginae interretialis it.

Hic est exemplum utendi `say`:

```raku
say 42;
```

Haec linea pars maioris programmatis vel totum programma esse potest. Certe `42` ad output imprimit.

Nunc cum stringis laboramus:

```raku
say 'Salve, Munde!';
```

Et ecce: `Salve, Munde!` in scrinio.

`say` plura argumenta accipere potest, itaque plures valores simul imprimere possumus:

```raku
say 42, 'Salve, Munde!';
```

Nota tantum quod partes in unam stringam iunguntur: `42Salve, Munde!`. Itaque melius est spatium inter eas addere. Hanc quaestionem iam solvere posse debes. Exempli gratia, hoc modo:

```raku
say 42, ' ', 'Salve, Munde!';
```

Post omnia argumenta, `say` characterem novae lineae ad output addit.

{% include nav.html %}
