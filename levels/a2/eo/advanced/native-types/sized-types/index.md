---
title: Grandecaj tipoj kaj superfluo
translations_gpt:
---

{% include menu.html %}

Raku havas la simplan `int`. Ĝi ankaŭ havas entjerojn kun fiksa nombro da bitoj. Ili estas `int8`, `int16`, `int32` kaj `int64`. Ĉiu el ili havas sensignan partneron: `uint8`, `uint16`, `uint32` kaj `uint64`. Sensignaj valoroj neniam estas negativaj. La nombro en la nomo diras, kiom da bitoj la valoro prenas.

Fiksa grandeco signifas fiksan intervalon de valoroj. `int8` tenas valorojn de `-128` ĝis `127`. `uint8` tenas valorojn de `0` ĝis `255`. La stokado ne povas kreski. Do kiam valoro iras preter la supro, ĝi ĉirkaŭvolviĝas. Ĝi revenas ĉe la malsupro. Tio estas _superfluo_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Aldonu unu al la plej granda `int8`. Vi ne ricevas `128`, ĉar `128` ne konvenas. La valoro ĉirkaŭvolviĝas al la plej malgranda valoro, `-128`. Ankaŭ sensignaj tipoj ĉirkaŭvolviĝas:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Normala `Int` estas la malo. Ĝi simple kreskas tiom, kiom necesas. Ĝi neniam superfluas. Fiksgrandaj indiĝenaj tipoj estas interŝanĝo. Vi akceptas fiksan intervalon. Kompense, la stokado estas malgranda, rapida kaj sen surprizoj. Ĉi tiu interŝanĝo estas la tuta celo de fiksgrandaj indiĝenaj tipoj.

Ĉu vi konas la intervalon de viaj datumoj? Ĉu vi volas rapidan kaj malgrandan stokadon? Tiam uzu fiksgrandan indiĝenan tipon. Ekzemple, tenu bajtojn de binaraj datumoj en `uint8`-tabelo. En normala aritmetiko, nombroj povas kreski sen limo. Tie uzu `Int`.

{% include nav.html %}
