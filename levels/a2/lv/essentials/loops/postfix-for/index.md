---
title: 'Pēcpārbaudes forma `for`'
---

{% include menu.html %}

Jūs jau zināt citus paziņojumu modifikatorus: [`if` un `else`](/lv/essentials/conditional-checks/modifiers) un [`while` un `until`](/lv/essentials/loops/modifiers). Tā ir laba ziņa. Raku valodā līdzīgas lietas darbojas līdzīgi.

Aiz īsa cikla ķermeņa var būt `for`:

```raku
.say for 1..7;
```

Ar `for` beigās diapazoni izskatās ļoti dabiski.

Šī programma dara to pašu, ko parasts cikls:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vai arī tā dara to pašu, ko šis cikls ar `$_`:

```raku
for 1..7 {
    .say;
}
```

Šeit `.say` ir īss veids, kā uzrakstīt `$_.say`.

{% include nav.html %}
