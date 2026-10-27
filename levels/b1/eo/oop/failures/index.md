---
title: Molaj misfunkcioj
translations_gpt:
---

{% include menu.html %}

Ĵeti escepton per `die` haltigas ĉion tuj. Foje tio estas tro forta. Eble vi volas, ke subrutino raportu, ke ĝi ne povis doni rezulton. Sed la vokanto decidu, ĉu tio estas fatala. Por tio, Raku havas _molajn misfunkciojn_, kiujn vi kreas per `fail`.

Kiam subrutino vokas `fail`, ĝi ne ĵetas escepton tuj. Anstataŭe, ĝi redonas specialan objekton `Failure` al la vokanto. `Failure` estas nedifinita, do la vokanto povas kviete kontroli ĝin:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

La sukcesa voko redonas `5`. La malsukcesanta voko redonas `Failure`, kaj `defined` donas `False` por ĝi. Do la vokanto povas testi la rezulton antaŭ ol uzi ĝin.

Kial `Failure` nomiĝas _mola_? Ĝi fariĝas vera, ĵetita escepto nur en unu kazo. Tio okazas, kiam vi uzas ĝin kiel valoron sen unue kontroli ĝin. Dum vi traktas ĝin, ekzemple per testo de `defined`, ĝi restas kvieta. Do subrutino povas raporti problemon sen haltigi la tutan programon.

## Vi vidis tion antaŭe

Ĉi tiu prokrastita speco de misfunkcio ne venas nur de `fail`. Pli frue en ĉi tiu parto, vi renkontis la saman ideon dufoje.

**Divido per nulo** kviete produktas valoron. Ĝi ĵetas nur, kiam vi efektive uzas tiun valoron:

```raku
my $x = 1 / 0;   # ankoraŭ neniu eraro
say $x;           # ĵetas nur ĉi tie, kiam la valoro estas uzata
```

**Malsukcesanta ekstera programo** redonas `Proc`. Ĝi ĵetas nur, se vi forĵetas ĝin sen trakti ĝin. Se vi konservas ĝin kaj rigardas ĝin, ĝi restas kvieta valoro:

```raku
run 'sh', '-c', 'exit 1';   # la malsukcesanta Proc estas forĵetita, do ĉi tio ĵetas
```

En ĉiu kazo, problemo ne haltigas la programon en la momento, kiam ĝi okazas. Anstataŭe, ĝi fariĝas valoro, kiun vi povas kontroli. Ĝi fariĝas ĵetita escepto nur, kiam vi uzas ĝin sen kontrolo aŭ ignoras ĝin. La temo [Ne ĉiu eraro estas tuja](/eo/oop/try/deferred-errors) montras ĉi tiujn du ekzemplojn unu apud la alia.

{% include nav.html %}
