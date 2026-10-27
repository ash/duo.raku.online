---
title: Izvade un kļūdas
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Programma ciklā saskaita skaitļu sarakstu `3, 5, 7`. Katrā kārtā sūtiet pašreizējo uzkrāto summu uz standarta kļūdu plūsmu kā progresa paziņojumu. Pēc cikla sūtiet galīgo rezultātu uz standarta izvadi. Izmantojiet plūsmu turus tieši.

Šī nošķiršana ir svarīga. Rezultātu var saglabāt vai padot tālāk citai programmai. Tikmēr progresa paziņojumi paliek malā, standarta kļūdu plūsmā.

## Piemērs

Kad jūs palaižat programmu, ekrānā parādās abas plūsmas. Vispirms nāk uzkrātās summas un tad galīgais rezultāts:

```
running total: 3
running total: 8
running total: 15
15
```

Bet, ja jūs izmetat standarta kļūdu plūsmu, paliek tikai īstais rezultāts:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
