---
title: Тест — Теги экспорта
translations_gpt:
---

{% include menu.html %}

В модуле есть `sub hello is export` и `sub goodbye is export(:partings)`. В программе есть `use Greeting :partings;`. Какие подпрограммы программа может вызвать напрямую?

{:.quiz}
1 | Только `goodbye`
0 | Только `hello`
0 | И `hello`, и `goodbye`
0 | Ни одну из них

{% include quiz.html %}

<div class="extended-explanation">

С тегом `use` импортирует его группу *вместо* группы по умолчанию. Поэтому `:partings` подключает `goodbye`, но не `hello`. Чтобы получить обе, запросите встроенный тег `:ALL`: `use Greeting :ALL;`.

</div>

{% include nav.html %}
