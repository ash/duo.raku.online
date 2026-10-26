---
title: The solution of ’The module layout‘
---

{% include menu.html %}

Here is one way to solve the task.

## Layout

```
Greet-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Greet/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

## Comments

1. The `META6.json` is at the top. The source code of the module goes under `lib/`. Its directory path matches the parts of the name. In the name, `::` separates these parts.

1. The tests are in `t/`. Use this layout. Then `zef test .` and `zef install .` work in the top directory.

{% include nav.html %}
