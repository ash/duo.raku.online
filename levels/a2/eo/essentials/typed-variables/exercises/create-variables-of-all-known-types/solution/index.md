---
title: 'Solvo: Krei variablojn de ĉiuj konataj tipoj'
---

{% include menu.html %}

Vi verŝajne ne skribas tiajn programojn en reala laboro. Sed vi devas scii, kiel rigardi en realajn programojn.

## Kodo

Jen ebla solvo. Ĝi kreas variablojn de la kvin tipoj supre. Poste ĝi presas iliajn tipojn.

```raku
my $a = 10;
my $b = 10.2;
my $c = 10e3;
my $d = True;
my $e = 'ten';

say $a, ' ', $a.WHAT;
say $b, ' ', $b.WHAT;
say $c, ' ', $c.WHAT;
say $d, ' ', $d.WHAT;
say $e, ' ', $e.WHAT;
```

🦋 Trovu la programon en la dosiero [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Eligo

La programo presas ĉi tion:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
