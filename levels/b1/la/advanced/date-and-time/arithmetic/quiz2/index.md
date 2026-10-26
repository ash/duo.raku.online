---
title: Quiz — Menses addere
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
say Date.new(2026, 1, 31).later(:months(1));
```

{:.quiz}
1 | 2026-02-28
0 | 2026-03-03
0 | 2026-02-31
0 | 2026-03-31

{% include quiz.html %}

<div class="extended-explanation">

Unus mensis post 31 Ianuarii esset "31 Februarii", sed ille dies non exsistit. Itaque `later` eventum retro movet ad ultimum verum diem illius mensis. Sic accipis 28 Februarii 2026. Quia 2026 non est annus bisextilis, Februarius tantum 28 dies habet.

</div>

{% include nav.html %}
