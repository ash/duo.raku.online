---
title: 'Solutio: Variabilis our'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Codicem fontem in archivo [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku) invenire potes.

## Exitus

```
8080
False
```

## Commentarii

1. `our $port` pars spatii nominum `Config` est. Itaque eam ab extra ut `$Config::port` accipere potes. Hoc `8080` imprimit.

1. `my $secret` lexicalis est. Privata est blocco fasciculi. Itaque non in spatio nominum est. Via `$Config::secret` nihil invenit. Valorem indefinitum dat. Itaque `.defined` est `False`. Hoc est discrimen quod `our` facit.

{% include nav.html %}
