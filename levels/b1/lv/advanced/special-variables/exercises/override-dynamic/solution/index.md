---
title: 'Risinājums: Pārrakstīt dinamisko'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `task` izsauc `log-it`, bet nekad nepiemin `$*prefix`. Tomēr vērtība sasniedz `log-it`. Dinamiskā meklēšana iet uz āru pa izsaukumu steku, garām `task`. Tā sasniedz to, kas tajā brīdī ir stekā.

1. Abi bloki iestata dažādas vērtības. Tāpēc *tas pats* izsaukums `task()` katru reizi dod citu priedēkli. Tieši tas padara dinamiskos mainīgos noderīgus. Konteksts sasniedz dziļi ligzdotu kodu. Jums tas nav jāpadod kā arguments cauri katrai rutīnai pa vidu.

{% include nav.html %}
