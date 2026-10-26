---
title: Saplacināšana un vienuma veidošana
translations_gpt:
---

{% include menu.html %}

Ja jūs ievietojat vienu masīvu citā, Raku pats _neapvieno_ to elementus. Aplūkojiet šo programmu:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

Masīvam `@c` ir tikai divi elementi, masīvi `@a` un `@b`. Raku glabā katru konteineru kā vienu vienību. Tas neizpako tā saturu ārējā masīvā. Tas pats notiek, kad jūs ieliekat masīvu starp citām vērtībām:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Ja jums tiešām vajag vienu plakanu secību, prasiet to tieši ar rutīnu `flat`:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemizācija (Itemization)

Dažreiz jums vajag pretējo. Jūs gribat pasargāt konteineru no izlīdzināšanas, pat `flat` iekšienē. Konstrukcija `$(...)` _itemizē_ savu argumentu. Tas nozīmē, ka tā atzīmē rezultātu kā vienu vienību. Salīdziniet iepriekšējo piemēru ar šo:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Šeit `$(@a)` saglabā `@a` kā vienu elementu. Bet `@b` joprojām tiek izlīdzināts savās divās vērtībās. Šī atkal ir sigila `$` ideja. `$` nozīmē "uztvert šo kā vienu lietu".

{% include nav.html %}
