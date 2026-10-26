---
title: Grandecaj tipoj kaj superfluo
translations_gpt:
---

{% include menu.html %}

Krom la simpla `int`, Raku havas entjerojn kun fiksa grandeco en bitoj. Tiuj estas `int8`, `int16`, `int32`, `int64` kaj iliaj sensignaj partneroj `uint8`, `uint16`, `uint32`, `uint64`. La nombro montras, kiom da bitoj la valoro prenas.

Kiam la larĝo estas fiksa, ankaŭ la intervalo estas fiksa. `int8` tenas valorojn de `-128` ĝis `127`, kaj `uint8` de `0` ĝis `255`. La stokado ne povas kreski, do se valoro iras preter la supron, ĝi ĉirkaŭvolviĝas al la malsupro. Tio nomiĝas _superfluo_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Se vi aldonas unu al la plej granda `int8`, vi ne ricevas `128`. Tiu nombro ne konvenus. Anstataŭe, ĝi ĉirkaŭvolviĝas al la plej malgranda valoro, `-128`. Ankaŭ sensignaj tipoj ĉirkaŭvolviĝas:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Normala `Int` estas la malo. Ĝi simple kreskas tiom, kiom necesas, kaj neniam superfluas. Ĉi tiu interŝanĝo estas la tuta celo de fiksgrandaj indiĝenaj tipoj. Vi akceptas fiksan intervalon. Kompense, vi ricevas stokadon, kiu estas antaŭvidebla, malgranda kaj rapida.

Ĉu vi konas la intervalon de viaj datumoj, kaj ĉu vi volas efikecon? Tiam uzu fiksgrandan indiĝenan tipon. Ekzemple, tenu bajtojn de binaraj datumoj en `uint8`-tabelo. Por ordinara aritmetiko, kie nombroj povas kreski sen limo, restu ĉe `Int`.

{% include nav.html %}
