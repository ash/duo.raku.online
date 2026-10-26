---
title: Файлът META6
translations_gpt:
---

{% include menu.html %}

Един-единствен файл в главната директория описва дистрибуцията: `META6.json`. Това е обикновен JSON. Той казва на инструментите името и версията на дистрибуцията. Казва също какво предоставя дистрибуцията и от какво зависи:

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

Двата най-важни ключа са `provides` и `depends`. `provides` свързва всяко име на модул с файла, който съдържа кода му. `depends` изброява другите дистрибуции, от които тази има нужда.

Файлът е най-отгоре в стандартното оформление на директориите:

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

Кодът на модула се намира под `lib/`. Пътят на директорията съответства на частите на името между `::`. Например `Maths::Simple` отива в `lib/Maths/Simple.rakumod`. Тестовете се намират под `t/`. С тази структура и правилен `META6.json` инструментите могат да компилират, тестват и инсталират дистрибуцията.

{% include nav.html %}
