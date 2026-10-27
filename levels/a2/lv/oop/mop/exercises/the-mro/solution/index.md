---
title: 'Risinājums: Metožu izšķiršanas kārtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `.^mro` atgriež tipu ķēdi. Raku pārmeklē šo ķēdi, lai atrastu metodi.

1. Ķēde iet pa mantošanas līniju, pa vienam solim. Vispirms nāk `C`. Tad nāk tā vecākklase, `B`. Tad nāk `A`, `B` vecākklase. Beigās nāk `Any` un `Mu`. Ar tiem beidzas katrs tips. Ar vairāk klašu līmeņiem saraksts ir vienkārši garāks.

{% include nav.html %}
