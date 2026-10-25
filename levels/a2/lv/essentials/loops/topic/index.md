---
title: Tēmas mainīgais
---

{% include menu.html %}

`$_` ir īpašs mainīgais. Tā nosaukums ir _topic mainīgais_.

Apskatiet šo ciklu pār diapazonu:

```raku
for 1..5 -> $n {
    say $n;
}
```

Jums nav jāraksta `$n`. Bez tā Raku izmanto mainīgo `$_`. Raku pats izveido šo mainīgo jūsu vietā. Tāpēc šī programma dara to pašu:

```raku
for 1..5 {
    say $_;
}
```

Jūs [jau zināt](/lv/essentials/hello-world/), ka `say` var būt arī metode:

```raku
for 1..5 {
    $_.say;
}
```

Metodes izsaukumā uz `$_` nav jāraksta `$_`. Tāpēc cikls var būt vēl īsāks:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
