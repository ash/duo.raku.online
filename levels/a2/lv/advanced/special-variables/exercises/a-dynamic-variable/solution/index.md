---
title: 'Risinājums: Dinamisks mainīgais'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Tvigils `*` padara `$*user` dinamisku. `whoami` nekad nesaņem to kā parametru. Tā atrod vērtību caur izsaukumu steku. Tāpēc pirmais izsaukums parāda noklusējuma vērtību, `guest`.

1. Iekšējais bloks vēlreiz deklarē `$*user` kā `admin`. Tas ilgst, kamēr bloks darbojas. *Tā pati* `whoami` tagad redz `admin`. Dinamiskā meklēšana pārbauda, kas tagad ir izsaukumu stekā. Jūs pārmācat dinamisku mainīgo kādā redzamības apgabalā. Tad viss kods, ko jūs no turienes izsaucat, saņem vairāk tiesību. Un jūs nemaz nemaināt `whoami`.

{% include nav.html %}
