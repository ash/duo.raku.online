---
title: Eskapado de specialaj karakteroj
---

{% include menu.html %}

Imagu, ke vi volas presi prezetikedon. La nomo de la produkto estas en skala variablo. La prezo estas en alia skala variablo.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

La prezo estas en dolaroj. Kiel do vi presas la etikedon? Vi volas ĉi tiun eligon: `Electricity costs $3.14`. Sed en duoblaj citiloj, dolarsigno montras variablon. Raku interpolas tiun variablon. Por presi la `$` mem, eskapu ĝin per reenstreko:

```raku
say "$product costs \$$price";
```

Vi ankaŭ povas uzi ŝnuran kunigon. Tiam vi ne bezonas eskapi `$`:

```raku
say $product ~ ' costs $' ~ $price;
```

Ĉi tiu versio presas ekzakte la saman ŝnuron. Sed interpolado aspektas pli natura. Ĝi estas pli facila por legi. Rigardu la ŝnuron en unuoblaj citiloj: `' costs $'`. Ĉi tie, Raku ne interpolas la karakteron `$`. Ĝi ankaŭ ne eskapas ĝin. Tio estas la ĉefa diferenco. En unuoblaj citiloj, specialaj karakteroj restas kiel ili estas.

Jen kelkaj pliaj specialaj karakteroj. Ili havas specialan signifon en ŝnuroj en duoblaj citiloj:

`\$` | Dolarsigno
`\n` | Nova linio
`\r` | Karet-retorno (reen al la komenco de la linio)
`\t` | Horizontala tabo
`\"` | Duobla citilo
`\\` | Reenstreko

La citiloj ĉirkaŭ ŝnuro estas gravaj. Ili diras al Raku, kion fari kun specialaj karakteroj. Rigardu ĉi tiujn du ekzemplojn:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Rulu ĉi tiun programon. La unua ŝnuro restas kiel ĝi estas, en unu linio. La dua ŝnuro nun estas en du partoj:

    One\nTwo
    Three
    Four

En duoblaj citiloj, `\n` estas speciala sekvenco. Raku faras el ĝi karakteron de nova linio. En unuoblaj citiloj, `\n` estas nur du normalaj karakteroj: `\` kaj `n`.

Estas interesa escepto por `'` kaj `\`. En unuoblaj citiloj, vi povas eskapi unuoblan citilon. Metu `\` antaŭ ĝi:

```raku
say '\''; # '
```

Kelkfoje unuobla citilo venas post reenstreko. Tiam vi devas eskapi ankaŭ la reenstrekon:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
