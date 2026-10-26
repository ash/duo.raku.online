---
title: Izmēra tipi un pārpilde
---

{% include menu.html %}

Raku valodā ir parastais `int`. Tajā ir arī veselie skaitļi ar fiksētu bitu skaitu. Tie ir `int8`, `int16`, `int32` un `int64`. Katram no tiem ir neparakstīts partneris: `uint8`, `uint16`, `uint32` un `uint64`. Neparakstītās vērtības nekad nav negatīvas. Skaitlis nosaukumā parāda, cik bitu aizņem vērtība.

Fiksēts izmērs nozīmē fiksētu vērtību diapazonu. `int8` glabā vērtības no `-128` līdz `127`. `uint8` glabā vērtības no `0` līdz `255`. Krātuve nevar augt. Tāpēc, kad vērtība pārsniedz augšējo robežu, tā apgriežas. Tā atgriežas pie apakšējās robežas. Tā ir _pārplūšana_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Pieskaitiet vienu lielākajam `int8`. Jūs nesaņemat `128`, jo `128` neietilpst. Vērtība apgriežas uz mazāko vērtību, `-128`. Neparakstītie tipi arī apgriežas:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Ar parastu `Int` ir otrādi. Tas vienkārši kļūst tik liels, cik vajag. Tas nekad nepārplūst. Natīvie tipi ar fiksētu izmēru ir kompromiss. Jūs pieņemat fiksētu diapazonu. Pretī krātuve ir maza, ātra un bez pārsteigumiem. Šis kompromiss ir visa natīvo tipu ar fiksētu izmēru jēga.

Vai jūs zināt savu datu diapazonu? Vai jūs gribat ātru un mazu krātuvi? Tad izmantojiet natīvo tipu ar fiksētu izmēru. Piemēram, glabājiet bināro datu baitus `uint8` masīvā. Parastā aritmētikā skaitļi var augt bez robežas. Tur izmantojiet `Int`.

{% include nav.html %}
