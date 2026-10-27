---
title: 'Risinājums: Metožu izšķiršanas kārtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class A {
}

class B is A {
}

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Atrodiet programmu failā [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Izvade

```
(C B A Any Mu)
```

## Komentāri

1. `.^mro` atgriež tipu ķēdi, ko Raku pārmeklē, kad tas meklē metodi.

1. Ķēde seko mantošanas līnijai pa vienam solim. Vispirms nāk `C`, tad tā vecākklase `B` un tad `B` vecākklase `A`. Beigās nāk `Any` un `Mu`, jo ar tiem beidzas katrs tips. Ar dziļāku hierarhiju saraksts ir vienkārši garāks.

{% include nav.html %}
