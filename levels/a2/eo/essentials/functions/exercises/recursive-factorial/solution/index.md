---
title: 'Solvo: Rekursiva faktorialo'
---

{% include menu.html %}

La faktorialo estas tre utila ekzerco. Vi povas solvi ĝin per multaj malsamaj manieroj. Ĉi-foje ni uzas rekursion. Tio signifas, ke la funkcio vokas sin mem.

## Kodo 1

Jen la kodo de la solvo. Rimarku, ke vi devas kontroli kondiĉon. Ĉi tiu kondiĉo haltigas la rekursion. Sen ĝi, la rekursio daŭras por ĉiam.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Trovu la programon en la dosiero [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Kodo 2

En tia kodo, la postfiksa formo de `if` ofte estas pli bona. Ĉi tie, `if` venas post `return`. Do la funkcio tuj revenas. La kodo fariĝas pli klara. Ĝi havas malpli da krommarĝenoj kaj interpunkcio.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Trovu la ĝisdatigitan programon en la dosiero [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Ekzemplo

Rulu la programon kaj kontrolu la rezulton. Jen amuza fakto. En ses semajnoj estas ĝuste _10!_ sekundoj.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
