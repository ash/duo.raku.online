---
title: Viktorīna — Smailīgie bloki
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
(-> $a, $b { $a * $b })(3, 4).say
```

{:.quiz}
1 | 12
0 | 7
0 | 34
0 | kļūda

{% include quiz.html %}

<div class="extended-explanation">

Bultiņas bloks var uzskaitīt vairākus parametrus: `-> $a, $b` ņem divus. Šeit bloks nemaz netiek glabāts mainīgajā. To ieliek iekavās un uzreiz izsauc ar `(3, 4)`. Tāpēc `$a` saņem `3`, un `$b` saņem `4`. Bloks tos sareizina un dod `12`, un `.say` beigās to izdrukā.

</div>

{% include nav.html %}
