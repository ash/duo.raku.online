---
title: Operacioj kun nombroj
---

{% include menu.html %}

Ni certas, ke vi jam konas kelkajn operaciojn kun nombroj en Raku. Jen du vortoj por memori. La simbolo de _operacio_ nomiĝas _operaciilo_. Operacio laboras kun iuj objektoj. Ili nomiĝas _operandoj_.

## Aritmetiko

**Operaciilo** | **Operacio**
`+` | Adicio
`-` | Subtraho
`*` | Multipliko
`/` | Divido

Raku [subtenas Unikodon](/eo/essentials/on-unicode) tre bone. Do kelkaj el ĉi tiuj operaciiloj havas duan formon kun ne-ASCII-simboloj:

`×` | Multipliko
`÷` | Divido

Uzu krampojn por ŝanĝi la ordon de la operacioj:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

La modulo-operaciilo estas `%`. Ĝi estas la sama en multaj aliaj lingvoj.

`%` | Modulo

Ĝi donas la reston de la entjera divido de du nombroj. La resto estas tio, kio restas post la divido. Do `10 % 3` estas `1`. Sed notu, ke `-10 % 3` estas `2`. Jen kial. Dividu la unuan nombron per la dua nombro. Rondigu la rezulton malsupren. Multipliku ĝin per la dua nombro. Poste deprenu tion de la unua nombro. Tio estas la rezulto de `%`. Do `$a % $b` estas la sama kiel `$a - $b * floor($a / $b)`.

## Dividebleco

Raku ankaŭ havas utilan operaciilon por dividebleco. Ĝi kontrolas, ĉu unu nombro estas dividebla per alia. Tio signifas, ke ne estas resto.

`%%` | Dividebleco

Ĉi tio estas infiksa operaciilo. Ĝi staras inter siaj du operandoj: `10 %% 3`. Ĉu la unua operando estas dividebla per la dua? Tiam la rezulto estas la Boolea valoro `True`. Se ne, la rezulto estas `False`.

## Entjeraj operacioj

Iuj specialaj operacioj donas entjerajn rezultojn. Iliaj operaciiloj estas vortoj, ne simboloj.

`div` | Entjera divido
`mod` | Entjera modulo

La operaciilo `div` rondigas la rezulton malsupren. Do `10 div 3` estas `3`. Kaj `-10 div 3` estas `-4`.

Kaj `div` kaj `mod` bezonas entjerajn operandojn. Rigardu la liniojn markitajn `Eraro` en la programo sube. Se vi forigas la `#` el ili, la programo ne funkcias:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Eraro

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Eraro
```

## Potenco

Estas du manieroj ricevi _x_ al la potenco de _y_. La unua maniero estas la operaciilo `**`:

```raku
say 3 ** 4; # 81
```

La dua maniero estas uzi superskribitajn ciferojn. Tiuj estas malgrandaj ciferoj ĉe la supro de la linio. Ekzemple:

```raku
say 3⁴; # 81
```

Vi ankaŭ povas uzi du aŭ pli da superskribitaj ciferoj. Tiam la potenco povas esti pli granda ol 9. Ekzemple:

```raku
say 2¹⁵; # 32768
```

Negativa potenco ankaŭ funkcias:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Notu, ke la lastaj du esprimoj donas `Rat` nombron.

## Operacioj kun asigno

Foje vi bezonas ĝisdatigi variablon per operacio. Ĉiuj operacioj havas mallongan formon por tio. Jen ekzemplo kun `+`.

La plena formo

```raku
$a = $a + $b;
```

estas la sama kiel:

```raku
$a += $b;
```

{% include nav.html %}
