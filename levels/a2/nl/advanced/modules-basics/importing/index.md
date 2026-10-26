---
title: Importeren
translations_gpt: Importeren
---

{% include menu.html %}

Er zijn meerdere manieren om een module in een programma te laden. Raku heeft hiervoor drie statements: `use`, `need` en `require`. Ze verschillen op twee punten. Het eerste is _wanneer_ ze de module laden. Het tweede is _wat_ ze aan het programma geven.

## `use`

Je kent `use` al. Het laadt de module tijdens het compileren, voordat het programma draait. Het importeert ook de geëxporteerde namen van de module. Je kunt ze dus direct aanroepen:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` laadt de module ook tijdens het compileren. Maar het importeert de geëxporteerde namen _niet_. Je kunt nog steeds bij de `our`-variabelen van de module komen. Gebruik daarvoor de naam van de module:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Na `need Greeting` werkt een gewone `hello(...)` niet. Er is niets geïmporteerd. Alleen de volledige namen zijn beschikbaar, met de naam van de module erin. Een voorbeeld is `$Greeting::version`.

## `require`

`require` laadt de module tijdens de _uitvoering_, niet tijdens het compileren. Dat is in sommige gevallen handig. Soms weet je niet of je een module nodig hebt. Dat weet je pas als het programma draait. De gebruiker kan bijvoorbeeld de naam van de module invoeren.

Het laden gebeurt tijdens de uitvoering. Daarom importeert Raku niets automatisch. Schrijf na de naam van de module de namen die je wilt. Zet ze tussen punthaken. Dan importeert Raku ze. Zo kun je ze direct aanroepen:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Meestal is `use` de juiste keuze. `need` en `require` zijn voor minder gewone gevallen.

{% include nav.html %}
