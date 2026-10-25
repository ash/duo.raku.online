---
title: Redzēts agrāk?
---

{% include menu.html %}

## Problēma

Uzrakstiet programmu ar cilpu. Cilpa dara šīs lietas:

1. Lūdz lietotāju ievadīt vārdu.
2. Ja lietotājs jau vienu reizi ievadīja šo vārdu, izdrukā `Redzēts!`.
3. Ja lietotājs to ievadīja vairāk nekā vienu reizi, izdrukā `Redzēts 2 reizes!` un tā tālāk.
3. Atkārto cilpu.

## Piemērs

Šeit ir programmas lietošanas piemērs:

```console
$ raku seen-before.raku
Vārds: Es
Vārds: nekad
Vārds: neredzēju
Vārds: a
Vārds: neredzēju
Redzēts!
Vārds: to
Vārds: neredzēju
Redzēts 2 reizes!
Patiesi
Vārds: kā
Vārds: to
Redzēts!
Vārds: neredzēju
Redzēts 3 reizes!
Patiesi
Vārds: zāģēja
Vārds: ^C
```

Lai apturētu programmu, nospiediet `Ctrl+C`.

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
