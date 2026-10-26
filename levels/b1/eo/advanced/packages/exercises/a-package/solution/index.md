---
title: 'Solvo: Pako'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Kaj la variablo kaj la subrutino estas deklaritaj per `our`. Do ambaŭ fariĝas parto de la nomspaco `Temperature`, kaj vi povas atingi ilin de ekstere.

1. La variablo estas atingata kiel `$Temperature::freezing`: la sigelo, la nomo de la pako, poste la nomo de la variablo. La subrutino estas vokata kiel `Temperature::fahrenheit(100)`. Konverti `100` donas `100 * 9/5 + 32`, kio estas `212`.

1. Simpla `package` donas al vi nur la nomspacon. Por reuzebla biblioteko, ni uzus `module` anstataŭe. Kiam ni laboras kun objektoj, ni uzus `class`. Sed la nomspaco funkcias same en ĉiu kazo.

{% include nav.html %}
