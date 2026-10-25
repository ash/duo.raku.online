---
title: 'Pēcpārbaudes forma `for`'
---

{% include menu.html %}

Mēs jau esam redzējuši citus paziņojumu modifikatorus: [`if` un `else`](/lv/essentials/conditional-checks/modifiers) un [`while` un `until`](/lv/essentials/loops/modifiers). Tas ir iemesls mazliet nosvinēt, jo Raku dizains ir ļoti konsekvents.

Kad cikla ķermenis ir īss, jūs varat uzrakstīt `for` ciklu postfix formā:

```raku
.say for 1..7;
```

Kā redzat, ar `for` postfix formu diapazoni izskatās ļoti dabiski.

Šī programma ir tas pats, kas tradicionālāks variants:

```raku
for 1..7 -> $n {
    say $n;
}
```

Vai arī, ja izmantojat noklusējuma cikla mainīgo, tā ir tas pats, kas:

```raku
for 1..7 {
    .say;
}
```

Šeit `.say` ir `$_.say` īsā forma.

{% include nav.html %}
