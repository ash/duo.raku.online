---
title: Locales variabiles
---

{% include menu.html %}

Variabilem in ambitu globali declaremus. Quid fit si eam etiam localiter in clausula declaramus?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Nunc duae variabiles separatae in programmate sunt. Ambae `$x` vocantur. In ambitu globali, `$x` semper variabilem globalem significat. Sed intra clausulam, `$x` est alia variabilis, localis. Programma duos valores diversos imprimit:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
