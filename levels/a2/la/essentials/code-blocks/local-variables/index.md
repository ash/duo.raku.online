---
title: Locales variabiles
---

{% include menu.html %}

Nunc variabilem in ambitu globali creas. Eam etiam localiter creas, intra clausulam. Quid tum fit?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Nunc duae variabiles in programmate sunt. Idem nomen habent. Sed variabiles diversae sunt. In ambitu globali, omne `$x` est variabilis globalis. Intra clausulam, `$x` est variabilis localis. Non est `$x` globalis. Programma duos valores diversos imprimit:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
