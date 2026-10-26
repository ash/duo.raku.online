---
title: Lietotāja definēti operatori
---

{% include menu.html %}

Raku operatori ir vienkārši apakšprogrammas ar īpašiem nosaukumiem. Tāpēc jūs varat izveidot savus operatorus. Tam jūs lietojat kategoriju nosaukumus no lapas [Raku operatoru tipi](/lv/advanced/operator-types). Tie ir `prefix`, `infix`, `postfix` un tā tālāk.

Lai deklarētu operatoru, uzrakstiet `sub`. Tās nosaukumam ir trīs daļas. Vispirms nāk kategorija. Tad nāk kols. Tad nāk operatora simbols leņķa iekavās. Šeit ir jauns infiksa operators. Tā nosaukums ir `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Pēc tam jūs lietojat `plus` starp tā diviem operandiem. Tas strādā tieši kā iebūvēts infiksa operators.

Postfiksa operators nāk aiz sava operanda. Faktoriāls ir tipisks piemērs. Šeit tas ir postfiksa operators `!`. Tas lieto [redukcijas metaoperatoru](/lv/advanced/metaoperators/reduction), ko jūs jau zināt:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Jūs varat lietot ne tikai burtus un ASCII pieturzīmes. Operatora simbols var būt jebkura rakstzīme. Šis prefiksa operators lieto paragrāfa zīmi `§`. Tas divkāršo skaitli:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Jūsu pašu operatori ir spēcīgs rīks. Tāpēc lietojiet tos uzmanīgi. Labs operators padara kodu līdzīgu tā tēmas valodai. Dīvains operators tikai mulsina nākamo lasītāju.

{% include nav.html %}
