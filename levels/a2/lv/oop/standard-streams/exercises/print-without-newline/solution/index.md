---
title: 'Risinājums: Izvade bez jaunas rindas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Atrodiet programmu failā [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Izvade

```
abc
```

## Komentāri

1. `$*OUT.print` raksta savu tekstu, bet nepievieno jaunu rindu. Tāpēc `a` un `b` paliek tajā pašā rindā.

1. `$*OUT.say` uzraksta `c` un pēc tam jaunu rindu. Tas pabeidz rindu `abc`.

{% include nav.html %}
