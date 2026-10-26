---
title: Heredoko
translations_gpt:
---

{% include menu.html %}

## Problemo

Uzu *interpolantan* heredoc-on por konstrui leteron, kiu konfirmas mendon. Uzu kelkajn variablojn: kliento `$name`, `$item`, `$price` kaj `$count`. La prezo estas por unu varo. La heredoc devas interpoli la variablojn. Ĝi *ankaŭ* devas kalkuli la totalon en la teksto, per enmetita `{ … }`-bloko (`$count * $price`).

Krommarĝenigu la korpon de la heredoc, por ke ĝi kongruu kun la kodo ĉirkaŭ ĝi. Vicigu la fermilon kun la teksto. Tiam la krommarĝeno ne aperas en la eligo. Presu la rezulton.

## Ekzemplo

Prenu `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` kaj `$count = 3`. Tiam la programo presas la jenon, sen spacetoj komence:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
