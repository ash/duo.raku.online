---
title: Izmēra tipi un pārpilde
---

{% include menu.html %}

Bez parastā `int` Raku valodā ir veselie skaitļi ar fiksētu izmēru bitos. Tie ir `int8`, `int16`, `int32`, `int64` un to neparakstītie partneri `uint8`, `uint16`, `uint32`, `uint64`. Skaitlis parāda, cik bitu aizņem vērtība.

Ja platums ir fiksēts, arī diapazons ir fiksēts. `int8` satur vērtības no `-128` līdz `127`, bet `uint8` no `0` līdz `255`. Krātuve nevar augt, tāpēc, pārkāpjot augšējo robežu, vērtība apgriežas uz apakšējo. To sauc par _pārplūšanu_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Ja jūs pieskaitāt vienu lielākajam `int8`, jūs nesaņemat `128`. Šis skaitlis neietilptu. Tā vietā vērtība apgriežas uz mazāko vērtību, `-128`. Neparakstītie tipi arī apgriežas:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Ar parastu `Int` ir otrādi. Tas vienkārši kļūst tik liels, cik vajag, un nekad nepārplūst. Šis kompromiss ir visa natīvo tipu ar fiksētu izmēru jēga. Jūs pieņemat fiksētu diapazonu. Pretī jūs saņemat krātuvi, kas ir paredzama, maza un ātra.

Vai jūs zināt savu datu diapazonu un vēlaties efektivitāti? Tad izmantojiet natīvo tipu ar fiksētu izmēru. Piemēram, glabājiet bināro datu baitus `uint8` masīvā. Parastai aritmētikai, kur skaitļi var augt bez robežas, palieciet pie `Int`.

{% include nav.html %}
