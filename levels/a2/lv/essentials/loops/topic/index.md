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

Jūs varat izlaist mainīgo `$n`. Tad Raku tā vietā izmanto mainīgo `$_`. Programma dara to pašu, ko šī:

```raku
for 1..5 {
    say $_;
}
```

Jūs [jau zināt](/lv/essentials/hello-world/), ka `say` var izmantot kā metodi:

```raku
for 1..5 {
    $_.say;
}
```

Kad jūs izsaucat metodi uz `$_`, mainīgais nav jāraksta. Tāpēc cikls var būt vēl īsāks:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
