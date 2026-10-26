---
title: 'Solution: Een our-variabele'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `our $port` wordt deel van de `Config`-naamruimte. Je kunt hem dus van buitenaf bereiken als `$Config::port`, wat `8080` afdrukt.

1. `my $secret` is lexicaal, wat betekent dat hij privé is voor het pakketblok. Hij staat dus niet in de naamruimte. Het pad `$Config::secret` vindt niets, alleen een ongedefinieerde waarde, dus `.defined` is `False`. Dat is het verschil dat `our` maakt.

{% include nav.html %}
