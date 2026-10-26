---
title: Kvizo — Eksportaj etikedoj
---

{% include menu.html %}

Modulo deklaras `sub hello is export` kaj `sub goodbye is export(:partings)`. Kiujn subprogramojn programo povas voki rekte post `use Greeting :partings;`?

{:.quiz}
1 | Only `goodbye`
0 | Only `hello`
0 | Both `hello` and `goodbye`
0 | Neither of them

{% include quiz.html %}

<div class="extended-explanation">

Se vi nomas etikedon, `use` importas tiun grupon *anstataŭ* la defaŭltan. Do `:partings` alportas `goodbye`, sed ellasas `hello`. Por ricevi ambaŭ, vi petus la enkonstruitan etikedon `:ALL` per `use Greeting :ALL;`.

</div>

{% include nav.html %}
