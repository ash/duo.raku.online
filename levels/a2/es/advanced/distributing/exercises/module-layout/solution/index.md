---
title: 'Solution: La estructura del módulo'
translations_gpt:
---

{% include menu.html %}

Aquí hay una forma de resolver la tarea.

## Estructura

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

## Comentarios

1. El `META6.json` está arriba del todo. El código fuente del módulo va en `lib/`. Su ruta de directorios coincide con las partes del nombre. En el nombre, `::` separa estas partes.

1. Las pruebas están en `t/`. Usa esta estructura. Entonces `zef test .` y `zef install .` funcionan en el directorio principal.

{% include nav.html %}
