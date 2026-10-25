---
title: Legante komando-linio argumentojn
---

{% include menu.html %}

La funkcio `MAIN` estas utila pro du kialoj. Unue, ĝi klare montras, kie la programo komenciĝas. Due, ĝi havas argumentojn. Ili ricevas siajn valorojn el la komando-linio.

Estas du manieroj legi komando-liniajn argumentojn. Unu maniero estas la [`@*ARGS` tabelo](/eo/essentials/positionals/args-array). Ni jam uzis ĝin. Nun ni rigardu la duan manieron.

Rigardu ĉi tiun programon. Ĝi adicias du nombrojn.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Rulu la programon tiel. Ĝi presas la sumon de siaj du argumentoj:

```console
$ raku t.raku 123 45
168
```

Kiel ĉiu alia funkcio, `MAIN` povas havi defaŭltajn valorojn por siaj argumentoj. Kelkaj argumentoj povas havi ilin. Eĉ ĉiuj argumentoj povas havi ilin. Ekzemple:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Kelkfoje ne estas dua argumento. Tiam la programo uzas la defaŭltan valoron:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
