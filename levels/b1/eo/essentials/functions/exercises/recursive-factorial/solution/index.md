---
title: 'Solvo: Rekursiva faktorialo'
---

{% include menu.html %}

La faktorialo estas tre utila ekzerco, ĉar ekzistas multaj manieroj solvi ĝin. Ĉi-foje ni uzas rekursion, kio signifas, ke la funkcio vokas sin mem.

## Kodo 1

Jen la kodo de la solvo. Rimarku, ke vi devas kontroli kondiĉon por haltigi la rekursion. Alie, ĝi daŭros por ĉiam.

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

En tia kodo, la postfiksa formo de `if` ofte estas pli bona. Ĝi permesas al vi tuj reveni el la funkcio. Tio faras la kodon pli klara kaj forigas multe da krommarĝenoj kaj interpunkcio.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Trovu la ĝisdatigitan programon en la dosiero [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Ekzemplo

Rulu la programon kaj kontrolu la rezulton. Cetere, ĉu vi sciis, ke ses semajnoj havas ĝuste _10!_ sekundojn?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
