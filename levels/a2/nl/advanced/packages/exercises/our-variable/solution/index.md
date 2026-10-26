---
title: 'Solution: Een our-variabele'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Je kunt de broncode vinden in het bestand [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Uitvoer

```
8080
False
```

## Opmerkingen

1. `our $port` hoort bij de naamruimte `Config`. Je krijgt hem dus van buitenaf als `$Config::port`. Dat drukt `8080` af.

1. `my $secret` is lexicaal. Hij is privé voor het blok van het pakket. Hij staat dus niet in de naamruimte. Het pad `$Config::secret` vindt niets. Het geeft een ongedefinieerde waarde. Daarom is `.defined` `False`. Dat is het verschil dat `our` maakt.

{% include nav.html %}
