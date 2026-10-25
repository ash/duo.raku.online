---
title: 'Risinājums: Komandrindas argumentu drukāšana'
---

{% include menu.html %}

Programma saņem argumentus no komandrindas. Tie ir masīvā `@*ARGS`. Tāpēc mums vajag ciklu pa tā elementiem.

## Kods

```raku
.say for @*ARGS;
```

🦋 Atrodiet programmu failā [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Izvade

Palaidiet programmu. Pārbaudiet, ka tā izdrukā argumentus, pa vienam katrā rindā:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
