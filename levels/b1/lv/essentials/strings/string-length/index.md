---
title: Virknes garums
---

{% include menu.html %}

Tā kā Raku virknes ir Unicode, dažas vienkāršas lietas kļūst nedaudz grūtākas. Vai vismaz jums par tām jādomā rūpīgāk. Ņemiet, piemēram, virknes garumu. Vai tas ir rakstzīmju skaits vai baitu skaits? Un ja nu viena un tā pati rakstzīme dažādās virknēs sastāv no dažādām daļām? Vai tā joprojām ir viena rakstzīme?

## Garums rakstzīmēs

Lai uzzinātu, cik rakstzīmju ir virknē, izmantojiet _metodi_ `chars`:

```raku
my $str = '你好世界';
say $str.chars;
```

Par metodēm mēs runāsim vēlāk, bet mums jau vajadzētu prast tās izmantot. Raku valodā jūs varat izsaukt metodes gandrīz jebkuram objektam, arī virknēm un skalārajiem mainīgajiem. Lai izsauktu metodi, izmantojiet punktu. Tātad šeit mēs izsaucam metodi mainīgajam, kas glabā virkni: `$str.chars`.

Ķīniešu sveicienā 你好世界 ir četras rakstzīmes. Un `$str.chars` atgriež tieši `4`.

## Garums baitos

Tikai uzziņai: lūk, kā noskaidrot virknes garumu baitos. Šajā gadījumā jums jāzina, kāds kodējums ir izmantots virknei:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Šoreiz programma izdrukā `12`. Ievērojiet, ka otrajā rindā ir divi metožu izsaukumi ķēdē.

## Garums koda punktos

Pilnības labad, lūk, vēl viena noderīga metode, kas saistīta ar virknes garumu: `codes`. Tā atgriež koda punktu skaitu virknē pēc tam, kad virkne ir normalizēta. Daudzos gadījumos `codes` un `chars` atgriež vienu un to pašu skaitli. Bet dažos retos gadījumos abas metodes dod dažādus rezultātus. Piemēram, jūs varat izveidot ‘neiespējamu’ rakstzīmi. Visā Unicode telpā tai nav viena koda punkta.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Šai rakstzīmei, `x̨`, nav sava koda punkta. To var izveidot tikai no divām daļām. Tās ir mazais burts `x` un kombinējošā rakstzīme `0x0328`. Tātad joprojām ir viena rakstzīme, bet divi koda punkti. Tāpēc programma izdrukā:

    1
    2

{% include nav.html %}
