---
title: Файл META6
translations_gpt:
---

{% include menu.html %}

Дистрибутив описывает один файл в его корневой директории: `META6.json`. Это обычный JSON. Он сообщает инструментам имя и версию дистрибутива. Ещё он говорит, что дистрибутив предоставляет и от чего зависит:

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

Два самых важных ключа — `provides` и `depends`. `provides` связывает имя каждого модуля с файлом, где лежит его код. `depends` перечисляет другие дистрибутивы, которые нужны этому дистрибутиву.

Файл лежит в корне стандартной структуры каталогов:

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

Код модуля находится в `lib/`. Путь из каталогов совпадает с частями имени между `::`. Например, `Maths::Simple` попадает в `lib/Maths/Simple.rakumod`. Тесты находятся в `t/`. С такой структурой и правильным `META6.json` инструменты могут собрать, протестировать и установить дистрибутив.

{% include nav.html %}
