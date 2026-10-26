---
title: Subskriboj
translations_gpt:
---

{% include menu.html %}

En la parto Esencoj, vi [skribis subrutinojn](/eo/essentials/functions). Ili havis poziciajn kaj nomitajn parametrojn. La parametroj havis defaŭltajn valorojn. La listo de parametroj estas la _subskribo_. Ĉi tiu sekcio montras du pliajn aferojn, kiujn subskribo povas fari. Ĝi povas fari parametron nedeviga. Kaj ĝi povas kolekti ajnan nombron da kromaj argumentoj.

## Nedevigaj parametroj

Parametro kun demandosigno post ĝi estas _nedeviga_. La vokanto povas ellasi ĝin. Tiam la parametro estas nedifinita. Do vi povas doni alian valoron por uzi anstataŭe. Uzu por tio la difinita-aŭ operatoron `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Ĉi tie ni vokas `greet` kun unu argumento. Tiam `$greeting` estas nedifinita. Do `//` donas `'Hello'` anstataŭe.

## Englutaj parametroj

Parametro kun `*` estas _engluta_. Ĝi prenas ĉiujn argumentojn, kiuj restas. Vi skribas englutan tabelon per `*@`. Ĝi kolektas ajnan nombron da poziciaj argumentoj en tabelon:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Vi povas uzi normalajn parametrojn kune kun engluta. Unue la fiksitaj parametroj ricevas siajn valorojn. Ĉio alia iras en la englutan tabelon:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Engluta hako funkcias same. Vi skribas ĝin per `*%`. Ĝi kolektas ĉiujn kromajn nomitajn argumentojn en hakon:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

La du nomitaj argumentoj fariĝas ŝlosiloj de `%options`. Do la programo presas:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
