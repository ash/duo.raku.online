---
title: El archivo META6
translations_gpt:
---

{% include menu.html %}

Un solo archivo en el directorio raíz describe una distribución: `META6.json`. Es JSON simple. Indica a las herramientas el nombre y la versión de la distribución. También dice qué ofrece la distribución y de qué depende:

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

Las dos claves más importantes son `provides` y `depends`. `provides` conecta cada nombre de módulo con el archivo que contiene su código. `depends` lista las otras distribuciones que esta necesita.

El archivo está en la raíz de una estructura de directorios estándar:

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

El código del módulo vive en `lib/`. La ruta de directorios coincide con las partes del nombre entre los `::`. Por ejemplo, `Maths::Simple` va en `lib/Maths/Simple.rakumod`. Las pruebas viven en `t/`. Con esta estructura y un `META6.json` correcto, las herramientas pueden construirla, probarla e instalarla.

{% include nav.html %}
