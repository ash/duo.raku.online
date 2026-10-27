---
title: Darbs ar direktorijām
translations_gpt:
---

{% include menu.html %}

Dažreiz jums jāstrādā ar pašu failu sistēmu. Failu sistēma glabā visus failus un direktorijas uz diska. Piemēram, jūs pārbaudāt, kas eksistē, vai veidojat direktorijas. Direktorija ir mape. Tajā var būt faili un citas direktorijas. Šim darbam Raku izmanto _ceļa objektus_. Ceļš parāda, kur atrodas fails vai direktorija. Metode `.IO` pārvērš jebkuru virkni par ceļa objektu. Tad ceļa objekts atbild uz jautājumiem par šo ceļu.

Divi jautājumi ir visbiežākie. Vai ceļš eksistē? Un kāda veida lieta tā ir?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` pārbauda, vai ceļš eksistē. `.f` pārbauda, vai tas ir parasts fails. `.d` pārbauda, vai tā ir direktorija.

`mkdir` izveido jaunu direktoriju:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Nākamais temats parāda, kā uzskaitīt to, kas ir direktorijā.

{% include nav.html %}
