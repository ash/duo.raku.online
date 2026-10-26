---
title: Тест — Теги экспорта
translations_gpt:
---

{% include menu.html %}

Модуль объявляет `sub hello is export` и `sub goodbye is export(:partings)`. Какие подпрограммы программа может вызвать напрямую после `use Greeting :partings;`?

{:.quiz}
1 | Только `goodbye`
0 | Только `hello`
0 | И `hello`, и `goodbye`
0 | Ни одну из них

{% include quiz.html %}

<div class="extended-explanation">

Если указать тег, `use` импортирует эту группу *вместо* группы по умолчанию. Поэтому `:partings` подключает `goodbye`, а `hello` нет. Чтобы получить обе, нужно запросить встроенный тег `:ALL` с помощью `use Greeting :ALL;`.

</div>

{% include nav.html %}
