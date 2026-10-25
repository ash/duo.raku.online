---
title: 'Kvizo: Booleaj operacioj'
---

{% include menu.html %}

Sube estas kelkaj programoj. Kion presas ĉiu programo? Elektu la ĝustan respondon.

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

Kion presas ĉi tiu programo?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Komentoj

La dua kaj la tria programoj havas esprimojn kun tri Booleaj valoroj. La rezulto dependas de la ordo de la operacioj. La operaciilo `&&` havas pli altan precedencon ol `||`. Do Raku faras `&&` unue.

{% include nav.html %}
