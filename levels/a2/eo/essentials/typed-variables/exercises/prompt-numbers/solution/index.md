---
title: 'Solvo: Ekzameni la rezulton de `prompt` — Nombroj'
---

{% include menu.html %}

## Kodo

Jen la tuta programo. Ĝi solvas la problemon. Ĝi presas la valoron, kiun vi enigas, kaj ĝian tipon.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Vi povas trovi la fontkodon en la dosiero [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testaj kuradoj

Rulu la programon kelkajn fojojn. Enigu nombrojn de malsamaj tipoj.

### Entjeroj

Unue, ni provu entjerojn. Provu pozitivajn kaj negativajn.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

La tipo de la rezulto estas `IntStr`. Ĉi tiu tipo estas enkonstruita en Raku. Ĝi havas la trajtojn de `Int` kaj de `Str`.

### Raciaj nombroj

Nun ni provu racian nombron. Memoru: en Raku, nombro kun dekuma punkto estas `Rat`. Ĝi ne estas glitkoma nombro.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Ĉi-foje la datumoj en `$n` havas la tipon `RatStr`. Tio estas kombinita tipo. Ĝi estas kaj `Rat` kaj `Str`.

### Flosantaj-punktaj nombroj

Laste, provu nombron en scienca notacio, kun la litero `e`. Nun vi verŝajne povas diveni la eligon.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Jes, la nova valoro havas la tipon `NumStr`.

{% include nav.html %}
