---
title: 'Solutio: Codices nationum'
---

{% include menu.html %}

Ut codicem in nomen vertat, programma eum in hash quaerit: `%cc{$_}`. Hoc in circulo super array `@codes` facit.

## Codex

Hic est una solutio possibilis, sine pleno indice nationum:

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

Cum codicibus ex munere, programma nationes sequentes imprimit:

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
