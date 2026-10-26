---
title: 'Solution: Un pacchetto'
translations_gpt: true
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Puoi trovare il codice sorgente nel file [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Output

```
0
212
```

## Commenti

1. Sia la variabile sia la subroutine sono dichiarate con `our`. Quindi entrambe diventano parte del namespace `Temperature`, e puoi raggiungerle dall'esterno.

1. La variabile si raggiunge come `$Temperature::freezing`: il sigillo, il nome del package, poi il nome della variabile. La subroutine viene chiamata come `Temperature::fahrenheit(100)`. Convertire `100` dà `100 * 9/5 + 32`, cioè `212`.

1. Un semplice `package` ti dà solo il namespace. Per una libreria riutilizzabile, useremmo invece `module`. Quando lavoriamo con gli oggetti, useremmo una `class`. Ma il namespace funziona allo stesso modo in ogni caso.

{% include nav.html %}
