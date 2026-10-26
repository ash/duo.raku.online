---
title: 'Solutio: Variabilis our'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `our $port` pars spatii nominum `Config` fit. Itaque eam ab extra ut `$Config::port` attingere potes, quod `8080` imprimit.

1. `my $secret` lexicalis est, id est privata blocco fasciculi. Itaque non in spatio nominum est. Via `$Config::secret` nihil invenit, solum valorem indefinitum, itaque `.defined` est `False`. Hoc est discrimen quod `our` efficit.

{% include nav.html %}
