---
title: '`note`'
---

{% include menu.html %}

Rutina `note` argumenta sua ad rivum standardum errorum imprimit. Praeter hoc, prorsus sicut [`say`](../say) operatur.

1. Vocatur methodum `gist` in argumentis suis.
1. Addit characterem novae lineae.
1. Convertit eventum ad UTF-8.
1. Mittit ad rivum `STDERR`.

```raku
my $x = 42;
note "Valor currentis \$x est $x";
```

Proba hoc programma nuntium ad `STDOUT` non mittere:

```
$ raku t.raku > /dev/null
Valor currentis $x est 42
```

Si `note` sine argumentis vocas, nuntium praedefinitum imprimit, `Notatum`.

{% include nav.html %}
