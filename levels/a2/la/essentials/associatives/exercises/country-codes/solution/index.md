---
title: 'Solutio: Codices nationum'
---

{% include menu.html %}

Programma circulum super array `@codes` habet. Pro quoque codice, nomen ex hash accipit: `%cc{$_}`.

## Codex

Hic est solutio possibilis. Non omnes nationes ostendit:

```raku
my %cc =
    AD => 'Andorra',
    AE => 'Emiratus Arabes Uniti',

    # . . .

    ZM => 'Zambia',
    ZW => 'Zimbabvia'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Inveni codicem fontem in archivo [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Exitus

Pro his codicibus, programma hunc indicem nationum imprimit:

```console
$ raku exercises/associatives/country-codes.raku
Francia
Italia
Germania
Estonia
Lettonia
Civitates Foederatae Americae
Sina
India
Brasilia
```

{% include nav.html %}
