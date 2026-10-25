---
title: Daudzfunkcijas
---

{% include menu.html %}

Raku valodā ir _vairākkārtējs izsaukums_, kas balstās uz funkcijas parakstu. Ar to vairākām funkcijām var būt vienāds nosaukums. Bet tās pieņem dažādu tipu ievaddatus. Uzrakstiet deklaratoru `multi` pirms katra funkcijas varianta.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Pēc `multi` jūs varat izlaist `sub`.

Šeit vienai funkcijai ir divi varianti. Kompilators skatās uz argumentiem katrā izsaukumā. Tad tas izvēlas pareizo variantu. Tas ir vairākkārtējs izsaukums. Salīdziniet šos divus izsaukumus:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

Pirmais izsaukums palaiž variantu ar veselu skaitļu parametriem. Otrais izsaukums palaiž otro variantu. Šis variants gaida divas virknes.

## Literālie parametri

Lūk, interesants gadījums. Variantam kā parametrs var būt literāla vērtība. Literālis ir vērtība kodā, piemēram, `42`. Apskatiet šos divus variantus:

```raku
multi sub f(42) {say 'Šī ir atbilde'}
multi sub f($x) {say "$x nav atbilde"}
```

Raku palaiž pirmo variantu tikai tad, ja arguments ir tieši 42. Visos citos gadījumos Raku palaiž otro variantu. Abu definīciju secība nav svarīga.

```raku
f(10); # 10 nav atbilde
f(42); # Šī ir atbilde
```

{% include nav.html %}
