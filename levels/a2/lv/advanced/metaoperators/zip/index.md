---
title: Zip metaoperatori
translations_gpt:
---

{% include menu.html %}

Zip metaoperators `Z` paņem divus sarakstus vai vairāk. Tas saliek to elementus kopā pēc pozīcijas:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Rezultāts ir grupu saraksts. Pirmajā grupā ir katra saraksta pirmais elements. Otrajā grupā ir katra saraksta otrais elements, un tā tālāk.

Ir arī gudrāks veids. Jūs varat lietot `Z` kopā ar operatoru. Tad operators strādā ar katru pāri. Piemēram, `Z+` saskaita elementus tajās pašās pozīcijās:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Šeit zip metaoperators strādā ar operatoru `+`. Tas aprēķina `1 + 10`, `2 + 20` un `3 + 30`. Tāpat `Z*` sareizina elementus tajās pašās pozīcijās:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Un `Z~` savieno virknes tajās pašās pozīcijās:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
