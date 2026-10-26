---
title: Файл META6
translations_gpt:
---

{% include menu.html %}

Один файл описывает дистрибутив. Он называется `META6.json` и лежит в корневой директории. Это простой JSON-файл. Он сообщает инструментам имя и версию дистрибутива. Ещё он говорит, что дистрибутив предоставляет и от чего он зависит:

```json
{
    "name": "Maths::Simple",
    "version": "0.0.1",
    "description": "Simple maths helpers",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [],
    "provides": {
        "Maths::Simple": "lib/Maths/Simple.rakumod"
    }
}
```

Два самых важных ключа — `provides` и `depends`. `provides` связывает имя каждого модуля с его файлом. Код модуля лежит в этом файле. `depends` перечисляет другие дистрибутивы, которые нужны этому.

Файл лежит в корневой директории. Вот стандартная структура:

```
Maths-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Maths/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

Код модуля лежит в `lib/`. Путь из каталогов совпадает с частями имени. В имени `::` разделяет части. Например, модуль `Maths::Simple` лежит в `lib/Maths/Simple.rakumod`. Тесты лежат в `t/`. Вам нужны эта структура и правильный `META6.json`. Тогда инструменты могут собрать, протестировать и установить дистрибутив.

{% include nav.html %}
