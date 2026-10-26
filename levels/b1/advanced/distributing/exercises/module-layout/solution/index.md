---
title: The solution of ’The module layout‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `META6.json` is at the top. The module source goes under `lib/`. Its directory path matches the parts of the name between the `::`.

1. The tests are under `t/`. With this layout, `zef test .` and `zef install .` work in the top directory.

{% include nav.html %}
