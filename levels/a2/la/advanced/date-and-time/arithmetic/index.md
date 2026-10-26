---
title: Arithmetica dierum
---

{% include menu.html %}

Cum diebus arithmeticam facere potes. Tum multae computationes cotidianae faciles sunt.

Numerum integrum ad diem addere potes. Tum dies tot diebus progreditur. Novum diem accipis. Si opus est, Raku etiam mensem et annum mutat:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Etiam unum diem ab alio subtrahere potes. Numerum dierum inter eos accipis:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Pro maioribus gradibus, methodos `later` et `earlier` adhibe. Argumenta nominata accipiunt, ut `:days`, `:months`, vel `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Hae methodi semper rectum diem dant. Etiam operantur cum novus mensis vel annus incipit. Itaque numquam scire debes quot dies mensis habeat.

{% include nav.html %}
