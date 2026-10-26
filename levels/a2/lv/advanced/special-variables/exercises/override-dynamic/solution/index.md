---
title: 'Risinājums: Pārrakstīt dinamisko'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Atrodiet programmu failā [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Izvade

```
INFO: working
DEBUG: working
```

## Komentāri

1. `task` izsauc `log-it`. Bet tā nekad neizmanto `$*prefix`. Tomēr vērtība nonāk līdz `log-it`. Dinamiskā meklēšana iet atpakaļ pa izsaukumu steku. Tā iet garām `task`. Tā sasniedz kodu, kas tajā brīdī ir stekā.

1. Abi bloki iestata dažādas vērtības. Tāpēc *tas pats* izsaukums `task()` katru reizi dod citu priedēkli. Tāpēc dinamiskie mainīgie ir noderīgi. Informācija sasniedz kodu tālu lejā izsaukumu ķēdē. Nevienai rutīnai pa vidu tā nav jāpadod tālāk kā arguments.

{% include nav.html %}
