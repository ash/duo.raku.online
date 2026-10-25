---
title: Daudzfunkcijas
---

{% include menu.html %}

Raku valodā ir _vairākkārtējs izsaukums_, kas balstās uz funkcijas parakstu. Tas ļauj izveidot funkcijas ar vienādu nosaukumu, bet ar dažādiem ievaddatu tipiem. Izmantojiet `multi` deklaratoru katram funkcijas variantam.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Pēc `multi` drīkst izlaist `sub`.

Ja vienai funkcijai ir divi varianti, kompilators veic vairākkārtēju izsaukumu. Tā izvēle ir atkarīga no tā, kādus argumentus tas redz funkcijas izsaukumā. Salīdziniet šos divus izsaukumus:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

Pirmais izsaukums palaiž variantu ar veselu skaitļu parametriem. Otrais izsaukums palaiž otru variantu, kas gaida divas virknes.

## Literālie parametri

Interesants daudzfunkciju lietojums ir varianti ar literālām vērtībām kā parametriem. Apskatiet šādus divus variantus:

```raku
multi sub f(42) {say 'Šī ir atbilde'}
multi sub f($x) {say "$x nav atbilde"}
```

Pirmais variants izpildās tikai tad, ja jūs izsaucat funkciju tieši ar 42. Visos citos gadījumos Raku izmanto otro variantu. Nav svarīgi, kādā secībā šīs funkcijas ir definētas.

```raku
f(10); # 10 nav atbilde
f(42); # Šī ir atbilde
```

{% include nav.html %}
