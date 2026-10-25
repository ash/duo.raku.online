---
title: 'Kvizo: Booleaj operacioj'
---

{% include menu.html %}

En ĉiu sekcio sube, elektu la respondon, kiu montras, kion la programo presas.

## 1

Jen la programo:

```raku
my $value = True && False;
say $value;
```

Kion ĝi presas?

{:.quiz}
0 | True
1 | False

## 2

Kion presas la dua programo?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

Kio estas la eligo de ĉi tiu programo?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Komentoj

La dua kaj la tria programoj havas esprimojn kun tri Booleaj valoroj. La rezulto dependas de la ordo, en kiu Raku faras la operaciojn. La operaciilo `&&` havas pli altan precedencon ol `||`, do Raku faras ĝin unue.

{% include nav.html %}
