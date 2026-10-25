---
title: Operacioj kun nombroj
---

{% include menu.html %}

Vi certe jam konas kelkajn el la operacioj kun nombroj en Raku. Ni nur menciu, ke la simbolo de _operacio_ nomiĝas _operaciilo_. La objektoj, kun kiuj operacio laboras, nomiĝas _operandoj_.

## Aritmetiko

**Operaciilo** | **Operacio**
`+` | Adicio
`-` | Subtraho
`*` | Multipliko
`/` | Divido

Ĉar Raku [subtenas Unikodon](/eo/essentials/on-unicode) tre bone, kelkaj el ĉi tiuj operaciiloj havas ankaŭ ne-ASCII-versiojn:

`×` | Multipliko
`÷` | Divido

Por ŝanĝi la ordon, en kiu la operacioj estas farataj, uzu krampojn:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

Kiel en multaj aliaj lingvoj, la modulo-operaciilo estas `%`.

`%` | Modulo

Ĝi redonas la reston de la entjera divido de du nombroj, do `10 % 3` estas `1`. Notu, ke `-10 % 3` estas `2` pro la maniero, kiel la operacio estas difinita. La rezulto de la divido estas rondigita malsupren kaj multiplikita per la dua nombro. Poste ĉi tiu valoro estas subtrahita de la unua nombro. Do `$a % $b` signifas la samon kiel `$a - $b * floor($a / $b)`.

## Dividebleco

Raku aldonas unu plian utilan operaciilon. Ĝi testas, ĉu unu nombro estas dividebla per alia.

`%%` | Dividebleco

Ĉi tio estas infiksa operaciilo: ĝi staras inter siaj du operandoj, kiel en `10 %% 3`. Se la unua operando estas dividebla per la dua, vi ricevas la Boolean valoron `True`. Alie, vi ricevas `False`.

## Entjeraj operacioj

Iuj specialaj operacioj redonas entjerojn kiel rezultojn. Iliaj operaciiloj estas vortoj anstataŭ simboloj.

`div` | Entjera divido
`mod` | Entjera modulo

La operaciilo `div` rondigas la rezulton malsupren. Do `10 div 3` estas `3`, kaj `-10 div 3` estas `-4`.

Kaj `div` kaj `mod` atendas entjerajn operandojn. Do la programo sube ne funkcios, se vi malkomentas la liniojn markitajn `Eraro`:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Eraro

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Eraro
```

## Potenco

Vi povas ricevi _x_ al la potenco de _y_ en du manieroj. Unue, vi povas uzi la operaciilon `**`:

```raku
say 3 ** 4; # 81
```

Due, vi povas uzi superskribitajn ciferojn, tio estas, malgrandajn levitajn ciferojn. Ekzemple:

```raku
say 3⁴; # 81
```

Vi povas uzi pli ol unu superskribitan ciferon por ricevi potencon pli grandan ol 9. Ekzemple:

```raku
say 2¹⁵; # 32768
```

Ankaŭ negativaj potencoj ne estas problemo:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Notu, ke en la lastaj du esprimoj, la rezulto estas `Rat` nombro.

## Operacioj kun asigno

Kiam vi bezonas ĝisdatigi variablon, ĉiuj operacioj havas mallongan formon. Ni montru ĝin per la ekzemplo de `+`.

La plena formo

```raku
$a = $a + $b;
```

signifas la samon kiel:

```raku
$a += $b;
```

{% include nav.html %}
