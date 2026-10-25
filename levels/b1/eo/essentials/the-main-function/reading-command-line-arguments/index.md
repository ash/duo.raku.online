---
title: Legante komando-linio argumentojn
---

{% include menu.html %}

La funkcio `MAIN` klare markas la komencon de la programo, kio estas utila. Sed ĝi estas utila ankaŭ ĉar ĝiaj argumentoj ricevas la valorojn el la komando-linio.

Vi povas legi komando-liniajn argumentojn laŭ du manieroj. La unua estas la [`@*ARGS` tabelo](/eo/essentials/positionals/args-array), kiun ni jam uzis. Nun ni rigardu la duan manieron.

Jen programo, kiu adicias du nombrojn.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Jen kiel vi povas ruli la programon. Ĝi presas la sumon de siaj du argumentoj:

```console
$ raku t.raku 123 45
168
```

Kiel ĉiu alia funkcio, `MAIN` povas havi defaŭltajn valorojn por siaj argumentoj. Tio eblas por kelkaj el ili, aŭ eĉ por ĉiuj el ili. Ekzemple:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Se vi ne donas la duan argumenton, la programo uzas la defaŭltan valoron:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
