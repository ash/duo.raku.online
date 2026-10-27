---
title: Izvade un kļūdas
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Programma ciklā saskaita skaitļu sarakstu `3, 5, 7`. Katrā kārtā sūtiet līdzšinējo summu uz standarta kļūdu plūsmu. Šī summa ir uzkrātā summa. Tas ir paziņojums par progresu. Pēc cikla sūtiet galīgo rezultātu uz standarta izvadi. Lietojiet plūsmu turus tieši.

Kāpēc tas ir svarīgi? Jūs varat saglabāt rezultātu vai nosūtīt to citai programmai. Progresa paziņojumi paliek standarta kļūdu plūsmā. Tur tie netraucē.

## Piemērs

Palaidiet programmu. Jūs redzat ekrānā abas plūsmas. Vispirms nāk uzkrātās summas, tad galīgais rezultāts:

```
running total: 3
running total: 8
running total: 15
15
```

Bet tagad mēs izmetam standarta kļūdu plūsmu. Paliek tikai īstais rezultāts:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
