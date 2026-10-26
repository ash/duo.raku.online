---
title: '`given` kaj `when`'
translations_gpt:
---

{% include menu.html %}

Foje programo devas elekti inter pluraj ebloj. Ĉeno de kontroloj `if` kaj `elsif` povas fariĝi longa. Ĝi ankaŭ ripetas la samajn aferojn. En tia kazo `given`/`when` ofte estas pli klara. Ĝi similas al la instrukcio `switch` en aliaj lingvoj.

La bloko `given` prenas valoron. Ĝi faras ĉi tiun valoron la _temo_. La temo estas la speciala variablo `$_`. Poste Raku komparas ĉiun blokon `when` kun la temo. La unua `when`, kiu kongruas, ruliĝas:

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

Kelkaj aliaj lingvoj havas instrukcion `switch`. Post kongruo, ĝi povas daŭri al la sekva kazo. Raku ne faras tion. Kiam `when` kongruas, ĝia bloko ruliĝas. Poste la bloko `given` finiĝas. Raku ne provas la aliajn blokojn `when`.

## La bloko `default`

Bloko `default` ruliĝas, kiam neniu bloko `when` kongruas. Ĝi funkcias kiel la parto `else` de instrukcio `if`:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` ne estas `1` kaj ne estas `2`. Do la programo presas:

```
many
```

{% include nav.html %}
