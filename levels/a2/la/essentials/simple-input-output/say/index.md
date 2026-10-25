---
title: 'Output cum `say`'
---

{% include menu.html %}

Functio `say` valores ad fluxum output standardum, `STDOUT`, imprimit. Homines eam etiam subrutinam vocant, vel simpliciter rutinam. Currisne programma in terminali? Tum output ibi vides. Uterisne officio online? Tum output ad partem specialem paginae interretialis it.

Hic est exemplum utendi `say`:

```raku
say 42;
```

Haec linea pars maioris programmatis esse potest. Etiam totum programma esse potest. Certe `42` ad output imprimit.

Nunc stringam experiamur:

```raku
say 'Salve, Munde!';
```

Bene! Nunc `Salve, Munde!` in scrinio est.

Rutina `say` plus quam unum argumentum accipere potest. Itaque plures valores simul imprimere possumus:

```raku
say 42, 'Salve, Munde!';
```

Sed output specta. Partes eius in unam stringam iunguntur: `42Salve, Munde!`. Itaque melius est spatium inter eas addere. Hanc quaestionem iam solvere potes. Exempli gratia, sic:

```raku
say 42, ' ', 'Salve, Munde!';
```

Rutina `say` omnia argumenta imprimit. Deinde characterem novae lineae ad output addit.

{% include nav.html %}
