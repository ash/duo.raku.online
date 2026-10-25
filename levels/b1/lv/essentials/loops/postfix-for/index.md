---
title: 'Pēcpārbaudes forma `for`'
---

{% include menu.html %}

Jūs jau esat redzējuši citus paziņojumu modifikatorus: [`if` un `else`](/lv/essentials/conditional-checks/modifiers) un [`while` un `until`](/lv/essentials/loops/modifiers). Tas ir mazs iemesls svinēt: Raku dizains ir ļoti konsekvents.

Ar īsu cikla ķermeni jūs varat izmantot `for` postfix formu:

```raku
.say for 1..7;
```

Kā redzat, diapazoni ļoti labi der kopā ar postfix `for`.

Šī programma dara to pašu, ko parastāks variants:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vai arī, ja izmantojat noklusējuma cikla mainīgo, to pašu, ko šis:

```raku
for 1..7 {
    .say;
}
```

Šeit `.say` ir `$_.say` saīsinājums.

{% include nav.html %}
