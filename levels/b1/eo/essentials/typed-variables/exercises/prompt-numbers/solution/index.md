---
title: 'Solvo: Ekzameni la rezulton de `prompt` — Nombroj'
---

{% include menu.html %}

## Kodo

Jen la kompleta programo. Ĝi solvas la problemon kaj presas kaj la enigitan valoron kaj ĝian tipon.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Vi povas trovi la fontkodon en la dosiero [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testaj kuradoj

Rulu la programon plurfoje kaj enmetu nombrojn de malsamaj tipoj.

### Entjeroj

Unue, ni provu entjerojn, kaj pozitivajn kaj negativajn.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

La rezulto havas la tipon `IntStr`. Ĉi tiu enkonstruita tipo havas la trajtojn de kaj `Int` kaj `Str`.

### Raciaj nombroj

Nun ni provu racian nombron. Memoru, ke en Raku, se vi skribas nombron kun dekuma punkto, vi ricevas `Rat` nombron. Ĝi ne estas glitkoma nombro.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Ĉi-foje, la programo diras, ke la datumoj en `$n` havas la tipon `RatStr`. Tio estas kombinita tipo de kaj `Rat` kaj `Str`.

### Flosantaj-punktaj nombroj

Fine, provu nombron en scienca notacio. Nun vi verŝajne jam povas diveni la eligon.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Kiel atendite, la nova valoro estas de la tipo `NumStr`.

{% include nav.html %}
