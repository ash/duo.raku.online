---
title: 'Тест — Мітки експорту'
translations_gpt:
---

{% include menu.html %}

Модуль оголошує `sub hello is export` і `sub goodbye is export(:partings)`. Які підпрограми програма може викликати напряму після `use Greeting :partings;`?

{:.quiz}
1 | Лише `goodbye`
0 | Лише `hello`
0 | І `hello`, і `goodbye`
0 | Жодну з них

{% include quiz.html %}

<div class="extended-explanation">

Якщо назвати мітку, `use` імпортує цю групу *замість* типової. Тож `:partings` приносить `goodbye`, але не бере `hello`. Щоб отримати обидві, треба попросити вбудовану мітку `:ALL` через `use Greeting :ALL;`.

</div>

{% include nav.html %}
