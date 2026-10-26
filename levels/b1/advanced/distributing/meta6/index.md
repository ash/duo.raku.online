---
title: The META6 file
---

{% include menu.html %}

A single file in the top directory describes a distribution: `META6.json`. It is plain JSON. It tells the tools the name and version of the distribution. It also says what the distribution provides and what it depends on:

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

The two most important keys are `provides` and `depends`. `provides` links each module name to the file that contains its code. `depends` lists the other distributions that this one needs.

The file is at the top of a standard directory layout:

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

The module code lives under `lib/`. The directory path matches the parts of the name between the `::`. For example, `Maths::Simple` goes into `lib/Maths/Simple.rakumod`. Tests live under `t/`. With this structure and a correct `META6.json`, the tools can build, test and install it.

{% include nav.html %}
