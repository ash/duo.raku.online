---
title: 'Solvo: Pako'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Vi povas trovi la fontkodon en la dosiero [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Eligo

```
0
212
```

## Komentoj

1. Kaj la variablo kaj la subrutino havas `our`. Do ambaŭ estas parto de la nomspaco `Temperature`. Kodo ekster la pako povas atingi ilin.

1. Vi atingas la variablon per `$Temperature::freezing`. Unue venas la sigelo, poste la nomo de la pako, poste la nomo de la variablo. Vi vokas la subrutinon kiel `Temperature::fahrenheit(100)`. Por `100`, ĝi kalkulas `100 * 9/5 + 32`. La rezulto estas `212`.

1. Simpla `package` donas nur la nomspacon. Por biblioteko, ni uzus `module` anstataŭe. Oni povas uzi bibliotekon denove kaj denove. Poste, kun objektoj, ni uzus `class`. Sed la nomspaco funkcias same en ĉiuj ĉi tiuj kazoj.

{% include nav.html %}
