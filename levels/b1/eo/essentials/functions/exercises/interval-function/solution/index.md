---
title: 'Solvo: Intervala funkcio'
---

{% include menu.html %}

Ĉi tiu funkcio uzas konstruaĵon `if` kun tri branĉoj. La unuaj du branĉoj havas Boolean teston. La tria branĉo ne bezonas teston. Se la nombro ne pasas la unuajn du testojn, ĝi estas la sola restanta opcio.

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
