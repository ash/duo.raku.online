---
title: 'Multoblaj `MAIN` funkcioj'
---

{% include menu.html %}

Kiel ĉiu alia funkcio en Raku, `MAIN` povas havi `multi` variantojn. Do la programo povas reagi al malsama enigo en malsamaj manieroj. La enigo povas havi malsaman nombron de parametroj. Aŭ la parametroj povas havi malsamajn tipojn.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Kun unu argumento, ĉi tiu programo duobligas ĝin. Kun du argumentoj, ĝi adicias ilin:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
