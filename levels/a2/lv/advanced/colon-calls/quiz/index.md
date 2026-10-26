---
title: Viktorīna — Kola izsaukums
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

Kols paņem *visu* atlikušo instrukcijas daļu. Tā visa kļūst par argumentu sarakstu. Tātad `substr: 0, 3` ir tas pats, kas `substr(0, 3)`. Abi argumenti nonāk pie `substr`. Tas sāk pie indeksa `0` un paņem `3` rakstzīmes. Rezultāts ir `pro`.

</div>

{% include nav.html %}
