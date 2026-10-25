---
title: 'Risinājums: Komandrindas argumentu drukāšana'
---

{% include menu.html %}

Programma saņem komandrindas argumentus masīvā `@*ARGS`. Tāpēc mums ar ciklu jāiet cauri šī masīva elementiem.

## Kods

```raku
.say for @*ARGS;
```

🦋 Atrodiet programmu failā [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Izvade

Palaidiet programmu un pārbaudiet, ka tā izdrukā katru argumentu savā rindā:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
