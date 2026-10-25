---
title: Globalaj variabloj
---

{% include menu.html %}

Ni kreu variablon antaŭ la koda bloko:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Ĉi tie, `$x` estas tutmonda variablo. Ĝi estas en la tutmonda amplekso, kaj la programo presas `42` dufoje.

{% include nav.html %}
