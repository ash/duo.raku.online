---
title: Uzant-difinitaj operatoroj
translations_gpt:
---

{% include menu.html %}

Operatoroj en Raku vere estas nur subrutinoj kun specialaj nomoj. Tio signifas, ke vi povas difini viajn proprajn operatorojn. Vi uzas la kategoriajn nomojn el la paĝo [Tipoj de Raku-operatoroj](/eo/advanced/operator-types): `prefix`, `infix`, `postfix` kaj tiel plu.

Por deklari operatoron, skribu `sub` kun speciala nomo. La nomo estas la kategorio, dupunkto kaj la simbolo de la operatoro en angulaj krampoj. Jen nova infiksa operatoro nomata `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Post kiam ĝi estas difinita, `plus` staras inter siaj du operandoj. Tio estas ĝuste kiel ĉe ĉiu enkonstruita infiksa operatoro.

Postfiksa operatoro venas post sia operando. La faktorialo estas klasika ekzemplo. Jen ĝi kiel la postfiksa operatoro `!`. Ĝi estas konstruita sur [la redukta metaoperatoro](/eo/advanced/metaoperators/reduction), kiun vi vidis pli frue:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Vi ne limiĝas al literoj kaj ASCII-interpunkcio. La simbolo de operatoro povas esti ajna signo. Ĉi tiu prefiksa operatoro uzas la paragrafan signon, `§`, por duobligi nombron:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Difini operatorojn estas potenca ilo, do uzu ĝin kun bona gusto. Bone elektita operatoro povas igi kodon legiĝi kiel la lingvo de ĝia fako. Malklara operatoro nur konfuzas la sekvan homon, kiu legas la kodon.

{% include nav.html %}
