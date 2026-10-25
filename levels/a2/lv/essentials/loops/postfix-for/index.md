---
title: 'Pēcpārbaudes forma `for`'
---

{% include menu.html %}

Jūs jau zināt citus paziņojumu modifikatorus: [`if` un `else`](/lv/essentials/conditional-checks/modifiers) un [`while` un `until`](/lv/essentials/loops/modifiers). Tā ir laba ziņa, jo Raku dizains ir ļoti konsekvents.

Kad cikla ķermenis ir īss, jūs varat rakstīt `for` aiz tā:

```raku
.say for 1..7;
```

Ar šo `for` formu diapazoni izskatās ļoti dabiski.

Šī programma dara to pašu, ko parastāks cikls:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vai arī ar noklusējuma cikla mainīgo tā dara to pašu, ko šis kods:

```raku
for 1..7 {
    .say;
}
```

Šeit `.say` ir īss veids, kā uzrakstīt `$_.say`.

{% include nav.html %}
