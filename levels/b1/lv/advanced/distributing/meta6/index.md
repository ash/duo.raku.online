---
title: META6 fails
translations_gpt:
---

{% include menu.html %}

Distribūciju apraksta viens fails tās augšējā direktorijā: `META6.json`. Tas ir vienkāršs JSON. Tas pasaka rīkiem distribūcijas nosaukumu un versiju. Tas arī norāda, ko distribūcija nodrošina un no kā tā ir atkarīga:

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

Divas svarīgākās atslēgas ir `provides` un `depends`. `provides` saista katru moduļa nosaukumu ar failu, kurā ir tā kods. `depends` uzskaita citas distribūcijas, kas šai ir vajadzīgas.

Fails atrodas standarta direktoriju izkārtojuma augšā:

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

Moduļa kods dzīvo zem `lib/`. Direktoriju ceļš atbilst nosaukuma daļām starp `::`. Piemēram, `Maths::Simple` nonāk failā `lib/Maths/Simple.rakumod`. Testi dzīvo zem `t/`. Ar šādu struktūru un pareizu `META6.json` rīki var to būvēt, testēt un instalēt.

{% include nav.html %}
