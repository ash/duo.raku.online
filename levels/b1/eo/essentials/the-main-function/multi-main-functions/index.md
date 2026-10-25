---
title: 'Multoblaj `MAIN` funkcioj'
---

{% include menu.html %}

Kiel ĉiu alia funkcio en Raku, la funkcio `MAIN` povas havi `multi` variantojn. Per ili, la programo povas reagi al ĉiu kazo laŭ propra maniero. La kazoj povas diferenci laŭ la nombro de eniraj parametroj aŭ laŭ iliaj tipoj.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Se estas nur unu argumento, ĉi tiu programo duobligas ĝin. Se estas dua argumento, la programo adicias ilin ambaŭ:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
