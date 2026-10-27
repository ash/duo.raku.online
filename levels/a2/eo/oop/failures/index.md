---
title: Molaj misfunkcioj
translations_gpt:
---

{% include menu.html %}

Escepto de `die` haltigas ĉion tuj. Foje tio estas tro multe. Eble subrutino ne povas doni rezulton. Ĝi devas raporti ĉi tiun problemon. Sed la vokanto devas decidi, ĉu la programo haltas. La vokanto estas la kodo, kiu vokis la subrutinon. Por ĉi tiu kazo, Raku havas _molajn misfunkciojn_. Vi faras ilin per `fail`.

Subrutino povas voki `fail`. Tiam ĝi ne ĵetas escepton tuj. Anstataŭe, ĝi redonas specialan objekton `Failure` al la vokanto. `Failure` estas valoro kun eraro interne. Ĝi estas nedifinita. Do la vokanto povas kviete kontroli ĝin:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

La unua voko funkcias kaj redonas `5`. La dua voko malsukcesas. Ĝi redonas `Failure`. Por ĉi tiu objekto, `defined` donas `False`. Do la vokanto povas testi la rezulton, antaŭ ol ĝi uzas ĝin.

Kial `Failure` nomiĝas _mola_? Ĝi fariĝas vera, ĵetita escepto nur en unu kazo. Tio okazas, kiam vi uzas ĝin kiel valoron sen kontrolo. Sed vi povas trakti ĝin, ekzemple, per testo de `defined`. Tiam ĝi restas kvieta. Do subrutino povas raporti problemon. La tuta programo ne devas halti.

## Vi jam konas tion

Ĉi tiu speco de misfunkcio estas prokrastita ĝis poste. Ne nur `fail` funkcias tiel. Pli frue en ĉi tiu parto, vi vidis la saman ideon du fojojn.

**Divido per nulo** kviete faras valoron. Ĝi ĵetas escepton nur, kiam vi vere uzas la valoron:

```raku
my $x = 1 / 0;   # ankoraŭ neniu eraro
say $x;           # ĵetas nur ĉi tie, kiam la valoro estas uzata
```

**Malsukcesanta ekstera programo** redonas `Proc`. Ĝi ĵetas escepton nur en unu kazo. Tio okazas, kiam vi forĵetas la `Proc` sen trakti ĝin. Tenu la `Proc` kaj rigardu ĝin. Tiam ĝi restas kvieta valoro:

```raku
run 'sh', '-c', 'exit 1';   # la malsukcesanta Proc estas forĵetita, do ĉi tio ĵetas
```

En ĉiu kazo, problemo ne haltigas la programon tuj. Ĝi fariĝas valoro. Vi povas kontroli ĉi tiun valoron. Ĝi fariĝas ĵetita escepto nur en du kazoj. Vi uzas ĝin sen kontrolo, aŭ vi ignoras ĝin. La temo [Ne ĉiu eraro estas tuja](/eo/oop/try/deferred-errors) montras ambaŭ ekzemplojn kune.

{% include nav.html %}
