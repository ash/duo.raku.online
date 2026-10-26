---
title: 'Risinājums: Dinamisks mainīgais'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Atrodiet programmu failā [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Izvade

```
running as guest
running as admin
```

## Komentāri

1. Tvigils `*` padara `$*user` dinamisku. `whoami` nekad nesaņem to kā parametru. Tā vietā tā atrod vērtību, skatoties uz āru pa izsaukumu steku. Tāpēc pirmais izsaukums parāda noklusējumu, `guest`.

1. Iekšējais bloks vēlreiz deklarē `$*user` kā `admin`, un tas ilgst, kamēr bloks darbojas. *Tā pati* `whoami` tagad redz `admin`. Tas ir tāpēc, ka dinamiskā meklēšana seko tam, kas pašlaik ir stekā. Dinamiska mainīgā pārmākšana kādā redzamības apgabalā dod vairāk tiesību visam, kas no tā tiek izsaukts. Un jums nemaz nav jāmaina `whoami`.

{% include nav.html %}
