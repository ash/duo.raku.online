---
title: Subskriboj
translations_gpt:
---

{% include menu.html %}

En la parto Esencoj, vi [difinis subrutinojn kun poziciaj kaj nomitaj parametroj](/eo/essentials/functions). Vi ankaŭ donis al la parametroj defaŭltajn valorojn. La listo de parametroj nomiĝas la _subskribo_. Ĉi tiu sekcio montras du pliajn aferojn, kiujn subskribo povas fari. Ĝi povas fari parametron nedeviga, kaj ĝi povas kolekti ajnan nombron da kromaj argumentoj.

## Nedevigaj parametroj

Parametro kun demandosigno post ĝi estas _nedeviga_. Tio signifas, ke la vokanto rajtas ellasi ĝin. En tiu kazo la parametro estas nedifinita. Do vi povas doni al ĝi rezervan valoron per la difinita-aŭ operatoro `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Kiam `greet` estas vokata kun unu argumento, `$greeting` estas nedifinita. Do `//` uzas `'Hello'` anstataŭe.

## Englutaj parametroj

Parametro markita per `*` estas _engluta_. Ĝi prenas ĉiujn restantajn argumentojn. Engluta tabelo, skribata `*@`, kolektas ajnan nombron da poziciaj argumentoj en tabelon:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Vi povas miksi ordinarajn parametrojn kun engluta. La fiksitaj parametroj ricevas siajn valorojn unue. Kio ajn restas, iras en la englutan tabelon:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Engluta hako funkcias same. Vi skribas ĝin kiel `*%`, kaj ĝi kolektas ajnajn kromajn nomitajn argumentojn en hakon:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

La du nomitaj argumentoj fariĝas ŝlosiloj en `%options`, do la programo presas:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
