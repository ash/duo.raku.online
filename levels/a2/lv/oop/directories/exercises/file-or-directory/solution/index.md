---
title: 'Risinājums: Fails vai direktorija?'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Atrodiet programmu failā [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Izvade

```
True
False
```

## Komentāri

1. `.f` pārbauda, vai tas ir parasts fails. Tāpēc tā atgriež `True` failam `a.txt`.

1. `.d` pārbauda, vai tā ir direktorija. Mēs jautājam tai par tieši to pašu ceļu. Tā atgriež `False`. `a.txt` ir fails, nevis direktorija. Abas pārbaudes strādā kā pāris. Tās parāda, vai ceļš ir fails vai direktorija.

{% include nav.html %}
