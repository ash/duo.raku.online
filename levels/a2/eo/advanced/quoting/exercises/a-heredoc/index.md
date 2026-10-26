---
title: Heredoko
translations_gpt:
---

{% include menu.html %}

## Problemo

Skribu leteron, kiu konfirmas mendon. Uzu heredoc-on, kiu *interpolas*. Konstruu la leteron el kelkaj variabloj. La variabloj estas kliento `$name`, `$item`, `$price` kaj `$count`. La prezo estas por unu varo. La heredoc enmetas la valorojn de la variabloj. Ĝi *ankaŭ* trovas la totalon. Por tio, ĝi havas `{ … }`-blokon ene de la teksto (`$count * $price`).

Krommarĝenigu la korpon de la heredoc. Ĝi devas kongrui kun la kodo ĉirkaŭ ĝi. Metu la fermilon je la sama krommarĝeno kiel la teksto. Tiam la eligo ne havas krommarĝenon. Presu la rezulton.

## Ekzemplo

Prenu `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` kaj `$count = 3`. Tiam la programo presas ĉi tion. Ne estas spacetoj komence de la linioj:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
