---
title: Quiz — Arithmetica dierum
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
say Date.new(2026, 1, 28) + 5;
```

{:.quiz}
1 | 2026-02-02
0 | 2026-01-33
0 | 2026-02-05
0 | 2026-02-03

{% include quiz.html %}

<div class="extended-explanation">

Si numerum integrum addis, dies tot diebus progreditur. Sponte in mensem proximum transit. Quintus dies post 28 Ianuarii 2026 est 2 Februarii. Hi sunt tres ultimi dies Ianuarii (29, 30, 31) et deinde duo alii.

</div>

{% include nav.html %}
