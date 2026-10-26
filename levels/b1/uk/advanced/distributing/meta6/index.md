---
title: Файл META6
translations_gpt:
---

{% include menu.html %}

Один файл у верхньому каталозі описує дистрибутив: `META6.json`. Це звичайний JSON. Він повідомляє інструментам назву й версію дистрибутива. Також він каже, що дистрибутив надає і від чого залежить:

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

Два найважливіші ключі — це `provides` і `depends`. `provides` пов'язує ім'я кожного модуля з файлом, у якому лежить його код. `depends` перелічує інші дистрибутиви, які потрібні цьому.

Файл лежить нагорі стандартної структури каталогів:

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

Код модуля живе під `lib/`. Шлях каталогів відповідає частинам імені між `::`. Наприклад, `Maths::Simple` іде в `lib/Maths/Simple.rakumod`. Тести живуть під `t/`. З такою структурою і правильним `META6.json` інструменти можуть зібрати, протестувати й встановити його.

{% include nav.html %}
