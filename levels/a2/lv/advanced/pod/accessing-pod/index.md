---
title: Piekļuve Pod datiem
translations_gpt:
---

{% include menu.html %}

Jūs varat parādīt Pod kā formatētu tekstu. Bet programma var arī nolasīt savu Pod **no iekšpuses**. Tā to dara, kamēr darbojas. Speciālais mainīgais `$=pod` glabā pašreizējā faila Pod. Tas ir bloku objektu saraksts. Tāpēc programma var apskatīt savu dokumentāciju:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Šeit `$=pod` satur vienu elementu: bloku `pod`. Jūs varat ieiet šajā blokā. Tur jūs varat nolasīt virsrakstus, rindkopas un punktus kā datus. Daži rīki veido dokumentāciju. Citi rīki pārbauda, vai dokumentācija ir klāt. Visiem šiem rīkiem tas ir vajadzīgs. Jūs varat parādīt dokumentāciju ar `--doc`. Vai arī jūs varat to nolasīt caur `$=pod`. Abos gadījumos tā ir īsta programmas daļa. Tā nav komentārs, un Raku to neizmet.

{% include nav.html %}
