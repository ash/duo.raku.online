---
title: 'Solvo: Kaptu la eligon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Eligo

```
3
```

## Komentoj

1. `:out` sendas la eligon en la `Proc`. Ĝi ne iras al la ekrano. `.out.slurp(:close)` legas ĉion reen. `.trim` forigas la linifinon ĉe la fino. `echo` aldonas ĉi tiun linifinon.

1. Nun la eligo estas ordinara ĉeno en nia programo. Ni laboras kun ĝi kiel kun ĉiuj aliaj datumoj. `.words.elems` dividas la ĉenon ĉe la blankspacoj. Poste ĝi kalkulas la pecojn. La rezulto estas `3`. Tial ni kaptas eligon. La ekstera programo fariĝas unu parto de nia laboro. Ni uzas ĝian rezulton en la sekvaj paŝoj.

{% include nav.html %}
