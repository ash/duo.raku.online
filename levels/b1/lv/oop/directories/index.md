---
title: Darbs ar direktorijām
translations_gpt:
---

{% include menu.html %}

Dažreiz jums jāstrādā ar pašu failu sistēmu. Piemēram, jūs varbūt gribat pārbaudīt, kas eksistē, vai izveidot direktorijas. Tam Raku izmanto _ceļa objektus_. Jebkuru virkni var pārvērst par ceļa objektu ar metodi `.IO`. Ceļa objekts tad atbild uz jautājumiem par šo ceļu.

Visbiežāk jūs jautājat, vai ceļš eksistē un kāda veida lieta tā ir:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` pārbauda, vai ceļš eksistē. `.f` pārbauda, vai tas ir parasts fails, un `.d` pārbauda, vai tā ir direktorija.

Lai izveidotu jaunu direktoriju, izmantojiet `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

Nākamajā tematā jūs redzēsiet, kā uzskaitīt direktorijas saturu.

{% include nav.html %}
