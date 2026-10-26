---
title: Skaitļu bāzes
translations_gpt:
---

{% include menu.html %}

Jūs varat rakstīt veselu skaitli arī citās bāzēs. Tam nav jābūt bāzē 10. Bāze 10 ir decimālā sistēma. Raku zina trīs biežākās citas bāzes. Tām jums nevajag neko papildus. Katrai bāzei ir savs prefikss:

```raku
say 0xFF;   # 255  — heksadecimālā (bāze 16)
say 0b1010; # 10   — binārā (bāze 2)
say 0o17;   # 15   — oktālā (bāze 8)
```

Kodā jūs varat izmantot jebkuru bāzi. Vērtība vienmēr ir tas pats veselais skaitlis. Atšķiras tikai tā rakstīšanas veids.

Jebkurai citai bāzei izmantojiet formu `:bāze<skaitlis>`. To sauc par radiksa formu:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Jūs varat iet arī pretējā virzienā. Ņemiet skaitli un uzrakstiet to citā bāzē. Tam izsauciet metodi `base`. Tā dod ciparu virkni:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
