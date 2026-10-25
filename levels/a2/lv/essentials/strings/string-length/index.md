---
title: Virknes garums
---

{% include menu.html %}

Raku virknes ir Unicode virknes. Tāpēc dažas vienkāršas lietas ir nedaudz grūtākas. Vai vismaz jums par tām jādomā vairāk. Piemēram, ņemiet virknes garumu. Vai tas ir rakstzīmju skaits? Vai arī tas ir baitu skaits? Un dažreiz vienai un tai pašai rakstzīmei dažādās virknēs ir dažādas daļas. Vai tā tad joprojām ir viena rakstzīme?

## Garums rakstzīmēs

_Metode_ `chars` dod virknes garumu rakstzīmēs:

```raku
my $str = '你好世界';
say $str.chars;
```

Par metodēm mēs runāsim vēlāk. Bet mēs tās varam izmantot jau tagad. Raku valodā jūs varat izsaukt metodes gandrīz katram objektam. Virknes un skalārie mainīgie arī ir objekti. Lai izsauktu metodi, rakstiet punktu. Šeit mainīgais glabā virkni. Mēs izsaucam metodi šim mainīgajam: `$str.chars`.

Šim ķīniešu sveicienam ir četras rakstzīmes: 你好世界. Un `$str.chars` dod tieši `4`.

## Garums baitos

Tas ir tikai jūsu informācijai. Lūk, kā iegūt virknes garumu baitos. Šim nolūkam jums jāzina virknes kodējums:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Šoreiz programma izdrukā `12`. Apskatiet otro rindu. Tajā ir divi metožu izsaukumi, viens pēc otra.

## Garums koda punktos

Lai pabeigtu šo tēmu, lūk, vēl viena noderīga metode virknes garumam: `codes`. Tā dod koda punktu skaitu virknē. Koda punkts ir rakstzīmes numurs Unicode. Pirms skaitīšanas Raku normalizē virkni. Tas pārveido virkni standarta formā. Bieži `codes` un `chars` dod vienādu rezultātu. Bet dažos retos gadījumos abas metodes dod dažādus rezultātus. Piemēram, jūs varat izveidot ‘neiespējamu’ rakstzīmi. Visā Unicode telpā tai nav viena koda punkta.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Rakstzīmei `x̨` nav sava koda punkta. Jūs to varat izveidot tikai no divām daļām. Pirmā daļa ir mazais burts `x`. Otrā daļa ir kombinējošā rakstzīme `0x0328`. Tā pievieno burtam zīmi. Tātad tā ir viena rakstzīme, bet tai ir divi koda punkti. Tāpēc programma izdrukā šo:

    1
    2

{% include nav.html %}
