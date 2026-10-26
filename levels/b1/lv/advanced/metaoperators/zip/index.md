---
title: Zip metaoperatori
translations_gpt:
---

{% include menu.html %}

Zip metaoperators `Z` paņem divus vai vairākus sarakstus. Tas sapāro to elementus pēc pozīcijas:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Rezultāts ir grupu saraksts. Pirmajā grupā ir katra saraksta pirmais elements. Nākamajā grupā ir otrie elementi un tā tālāk.

Vēl gudrāk ir apvienot `Z` ar operatoru, kas strādā ar katru pāri. Piemēram, `Z+` saskaita elementus pa pozīcijām:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Šeit zip metaoperators ietver operatoru `+`. Tas aprēķina `1 + 10`, `2 + 20` un `3 + 30`. Tāpat `Z*` sareizina atbilstošos elementus:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Un `Z~` savieno atbilstošās virknes:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
