---
title: 'Oplossing: Het domeingedeelte'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Je kunt de broncode vinden in het bestand [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Uitvoer

```
example.com
```

## Opmerkingen

1. `index('@')` geeft `4` terug, en dat is de positie van het teken `@`, geteld vanaf nul.

1. `substr($at + 1)` begint één teken na de `@`. Omdat er geen lengte is opgegeven, loopt hij door tot het einde van de string. Het resultaat is `example.com`.

{% include nav.html %}
