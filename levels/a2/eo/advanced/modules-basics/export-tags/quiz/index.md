---
title: Kvizo — Eksportaj etikedoj
---

{% include menu.html %}

Modulo havas `sub hello is export` kaj `sub goodbye is export(:partings)`. Programo havas `use Greeting :partings;`. Kiujn subprogramojn la programo povas voki rekte?

{:.quiz}
1 | Only `goodbye`
0 | Only `hello`
0 | Both `hello` and `goodbye`
0 | Neither of them

{% include quiz.html %}

<div class="extended-explanation">

Kun etikedo, `use` importas ĝian grupon *anstataŭ* la defaŭltan grupon. Do `:partings` alportas `goodbye`, sed ne `hello`. Por ricevi ambaŭ, petu la enkonstruitan etikedon `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
