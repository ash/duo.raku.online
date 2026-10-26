---
title: '`given` kaj `when`'
translations_gpt:
---

{% include menu.html %}

Foje programo bezonas elekti inter pluraj ebloj. Ĉeno de kontroloj `if` kaj `elsif` tiam povas fariĝi longa kaj plena de ripetoj. En tiaj kazoj `given`/`when` ofte estas pli klara. Ĝi similas al la instrukcio `switch` en aliaj lingvoj.

La bloko `given` prenas valoron kaj faras ĝin la _temo_. La temo estas la speciala variablo `$_`. Poste ĉiu bloko `when` estas komparata kun ĉi tiu temo. La unua, kiu kongruas, ruliĝas:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

Ĉi tiu programo presas:

```
two
```

Male al `switch` en kelkaj lingvoj, ĉi tie ne estas trafalado al la sekva kazo. Tuj kiam `when` kongruas, ĝia bloko ruliĝas, kaj la bloko `given` finiĝas. La aliaj blokoj `when` ne estas provataj.

## La bloko `default`

Bloko `default` ruliĝas, kiam neniu el la blokoj `when` kongruis. Ĝi faras la saman laboron kiel la branĉo `else` de instrukcio `if`:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` estas nek `1` nek `2`, do la programo presas:

```
many
```

{% include nav.html %}
