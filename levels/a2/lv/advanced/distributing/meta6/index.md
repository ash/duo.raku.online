---
title: META6 fails
translations_gpt:
---

{% include menu.html %}

Distribūciju apraksta viens fails. Tā nosaukums ir `META6.json`, un tas atrodas augšējā direktorijā. Tas ir vienkāršs JSON fails. Tas pasaka rīkiem distribūcijas nosaukumu un versiju. Tas arī pasaka, ko distribūcija nodrošina un no kā tā ir atkarīga:

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

Divas svarīgākās atslēgas ir `provides` un `depends`. `provides` saista katru moduļa nosaukumu ar tā failu. Šajā failā ir moduļa kods. `depends` uzskaita citas distribūcijas, kas šai distribūcijai vajadzīgas.

Fails atrodas augšējā direktorijā. Šeit ir standarta izkārtojums:

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

Moduļa kods atrodas zem `lib/`. Direktoriju ceļš atbilst nosaukuma daļām. Nosaukumā `::` atdala daļas. Piemēram, modulis `Maths::Simple` atrodas failā `lib/Maths/Simple.rakumod`. Testi atrodas zem `t/`. Jums vajag šo struktūru un pareizu `META6.json`. Tad rīki var distribūciju būvēt, testēt un instalēt.

{% include nav.html %}
