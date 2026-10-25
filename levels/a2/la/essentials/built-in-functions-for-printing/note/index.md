---
title: '`note`'
---

{% include menu.html %}

Rutina `note` argumenta sua ad rivum standardum errorum imprimit. In omnibus aliis rebus, `note` est sicut [`say`](../say).

1. Vocatur methodum `gist` in argumentis suis.
1. Addit characterem novae lineae.
1. Convertit eventum ad UTF-8.
1. Mittit ad rivum `STDERR`.

```raku
my $x = 42;
note "Valor currentis \$x est $x";
```

Hoc programma nuntium ad `STDOUT` non mittit. Proba id:

```
$ raku t.raku > /dev/null
Valor currentis $x est 42
```

Potes `note` sine argumentis vocare. Tum nuntium praedefinitum imprimit, `Notatum`.

{% include nav.html %}
