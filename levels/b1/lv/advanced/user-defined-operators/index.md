---
title: Lietotāja definēti operatori
---

{% include menu.html %}

Operatori Raku patiesībā ir vienkārši apakšprogrammas ar īpašiem nosaukumiem. Tas nozīmē, ka jūs varat definēt savus operatorus. Jūs lietojat kategoriju nosaukumus no lapas [Raku operatoru tipi](/lv/advanced/operator-types): `prefix`, `infix`, `postfix` un tā tālāk.

Lai deklarētu operatoru, uzrakstiet `sub` ar īpašu nosaukumu. Nosaukums ir kategorija, kols un operatora simbols leņķa iekavās. Šeit ir jauns infiksa operators ar nosaukumu `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Kad `plus` ir definēts, tas stāv starp saviem diviem operandiem. Tas ir tieši tāpat kā jebkuram iebūvētam infiksa operatoram.

Postfiksa operators atrodas aiz sava operanda. Faktoriāls ir klasisks piemērs. Šeit tas ir kā postfiksa operators `!`. Tas ir veidots ar [redukcijas metaoperatoru](/lv/advanced/metaoperators/reduction), ko jūs redzējāt iepriekš:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Jūs neesat ierobežoti ar burtiem un ASCII pieturzīmēm. Operatora simbols var būt jebkura rakstzīme. Šis prefiksa operators lieto paragrāfa zīmi, `§`, lai dubultotu skaitli:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Operatoru definēšana ir spēcīgs rīks, tāpēc lietojiet to ar labu gaumi. Labi izvēlēts operators var padarīt kodu līdzīgu tās jomas valodai, par kuru tas ir. Neskaidrs operators tikai mulsina nākamo cilvēku, kas lasa kodu.

{% include nav.html %}
