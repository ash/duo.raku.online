---
title: Globalaj variabloj
---

{% include menu.html %}

Nun ni kreas variablon antaŭ la koda bloko:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Ĉi tie, `$x` estas tutmonda variablo. Ĝi estas en la tutmonda amplekso. La tuta programo povas uzi ĝin. La programo presas `42` du fojojn.

{% include nav.html %}
