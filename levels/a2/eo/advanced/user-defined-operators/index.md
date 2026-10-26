---
title: Uzant-difinitaj operatoroj
translations_gpt:
---

{% include menu.html %}

En Raku, operatoroj estas nur subrutinoj kun specialaj nomoj. Do vi povas fari viajn proprajn operatorojn. Por tio, vi uzas la kategoriajn nomojn el la paĝo [Tipoj de Raku-operatoroj](/eo/advanced/operator-types). Ili estas `prefix`, `infix`, `postfix` kaj tiel plu.

Por deklari operatoron, skribu `sub`. Ĝia nomo havas tri partojn. Unue venas la kategorio. Poste venas dupunkto. Post ĝi venas la simbolo de la operatoro en angulaj krampoj. Jen nova infiksa operatoro. Ĝia nomo estas `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Post tio, vi uzas `plus` inter ĝiaj du operandoj. Ĝi funkcias ĝuste kiel enkonstruita infiksa operatoro.

Postfiksa operatoro venas post sia operando. La faktorialo estas tipa ekzemplo. Jen ĝi kiel la postfiksa operatoro `!`. Ĝi uzas [la reduktan metaoperatoron](/eo/advanced/metaoperators/reduction), kiun vi jam konas:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Vi povas uzi pli ol literojn kaj ASCII-interpunkcion. La simbolo de operatoro povas esti ajna signo. Ĉi tiu prefiksa operatoro uzas la paragrafan signon `§`. Ĝi duobligas nombron:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Viaj propraj operatoroj estas forta ilo. Do uzu ilin zorge. Bona operatoro igas la kodon aspekti kiel la lingvo de ĝia temo. Stranga operatoro nur konfuzas la sekvan leganton.

{% include nav.html %}
