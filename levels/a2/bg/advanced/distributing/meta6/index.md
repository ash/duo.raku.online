---
title: Файлът META6
translations_gpt:
---

{% include menu.html %}

Един файл описва дистрибуцията. Името му е `META6.json` и той е в главната директория. Това е прост JSON файл. Той казва на инструментите името и версията на дистрибуцията. Казва също какво предоставя дистрибуцията и от какво зависи:

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

Двата най-важни ключа са `provides` и `depends`. `provides` свързва всяко име на модул с неговия файл. Кодът на модула е в този файл. `depends` изброява другите дистрибуции, от които тази има нужда.

Файлът е в главната директория. Ето стандартното оформление:

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

Кодът на модула е под `lib/`. Пътят на директорията отговаря на частите на името. В името `::` разделя частите. Например модулът `Maths::Simple` е в `lib/Maths/Simple.rakumod`. Тестовете са под `t/`. Трябват ви тази структура и правилен `META6.json`. Тогава инструментите могат да компилират, да тестват и да инсталират дистрибуцията.

{% include nav.html %}
