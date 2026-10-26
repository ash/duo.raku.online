---
title: 'Тест — Мітки експорту'
translations_gpt:
---

{% include menu.html %}

Модуль має `sub hello is export` і `sub goodbye is export(:partings)`. Програма має `use Greeting :partings;`. Які підпрограми програма може викликати напряму?

{:.quiz}
1 | Лише `goodbye`
0 | Лише `hello`
0 | І `hello`, і `goodbye`
0 | Жодну з них

{% include quiz.html %}

<div class="extended-explanation">

З міткою `use` імпортує її групу *замість* типової групи. Тож `:partings` приносить `goodbye`, але не `hello`. Щоб отримати обидві, попросіть вбудовану мітку `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
