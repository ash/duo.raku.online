---
title: Файл META6
translations_gpt:
---

{% include menu.html %}

Один файл описує дистрибутив. Його назва — `META6.json`, і він лежить у верхньому каталозі. Це простий файл JSON. Він каже інструментам назву й версію дистрибутива. Також він каже, що дистрибутив надає і від чого він залежить:

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

Два найважливіші ключі — це `provides` і `depends`. `provides` пов'язує ім'я кожного модуля з його файлом. Код модуля лежить у цьому файлі. `depends` перелічує інші дистрибутиви, які потрібні цьому.

Файл лежить у верхньому каталозі. Ось стандартна структура:

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

Код модуля лежить під `lib/`. Шлях каталогів відповідає частинам імені. В імені `::` розділяє частини. Наприклад, модуль `Maths::Simple` лежить у `lib/Maths/Simple.rakumod`. Тести лежать під `t/`. Вам потрібні ця структура і правильний `META6.json`. Тоді інструменти можуть зібрати, протестувати й встановити дистрибутив.

{% include nav.html %}
