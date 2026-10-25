---
title: 'Solvo: Intervala funkcio'
---

{% include menu.html %}

La funkcio havas `if` kun tri branĉoj. La unuaj du branĉoj havas teston. La testo estas `True` aŭ `False`. La tria branĉo ne bezonas teston. Eble nombro ne pasas la unuajn du testojn. Tiam restas nur la tria branĉo.

## Kodo

Jen la solvo:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Trovu la programon en la dosiero [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Eligo

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
