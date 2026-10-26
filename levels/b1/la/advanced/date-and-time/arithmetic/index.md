---
title: Arithmetica dierum
---

{% include menu.html %}

Cum diebus arithmeticam facere potes. Hoc multas computationes cotidianas simplices reddit.

Si numerum integrum ad diem addis, dies tot diebus progreditur. Eventus est novus dies. Mensis et annus eius sponte mutantur, si opus est:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Si unum diem ab alio subtrahis, numerum dierum inter eos accipis:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Pro maioribus gradibus sunt methodi `later` et `earlier`. Argumenta nominata accipiunt, ut `:days`, `:months` vel `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Hae methodi recte numerant cum novus mensis vel annus incipit. Itaque numquam curare debes quot dies mensis habeat.

{% include nav.html %}
