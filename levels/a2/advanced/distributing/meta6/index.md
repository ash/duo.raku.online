---
title: The META6 file
---

{% include menu.html %}

One file describes a distribution. Its name is `META6.json`, and it is in the top directory. It is a simple JSON file. It tells the tools the name and the version of the distribution. It also tells what the distribution provides and what it depends on:

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

The two most important keys are `provides` and `depends`. `provides` links each module name to its file. The code of the module is in this file. `depends` lists the other distributions that this one needs.

The file is in the top directory. Here is the standard layout:

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

The code of the module is under `lib/`. The directory path matches the parts of the name. In the name, `::` separates the parts. For example, the module `Maths::Simple` is in `lib/Maths/Simple.rakumod`. The tests are under `t/`. You need this structure and a correct `META6.json`. Then the tools can build, test and install the distribution.

{% include nav.html %}
