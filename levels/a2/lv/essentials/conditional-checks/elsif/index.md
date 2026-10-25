---
title: 'Izmantojot `elsif`'
---

{% include menu.html %}

Tagad jūs zināt `if` un `else`. Bet ko darīt, ja jums vajag daudz testu, vienu pēc otra? Raku valodā tam ir vismaz divi veidi. Patiesībā to ir vēl vairāk.

Viens veids ir bloku ķēde: `if`, `elsif` un `else`. Ievērojiet, kā mēs rakstām `elsif`. Tas nav `elseif`. Tas nav arī `else if`.

```raku
my $x = prompt 'Enter the number: ';
if $x > 100 {
    say "$x is bigger than 100.";
}
elsif $x > 50 {
    say "$x is bigger than 50.";
}
elsif $x > 25 {
    say "$x is bigger than 25.";
}
else {
    say "$x is 25 or smaller.";
}
```

Šai programmai ir trīs zari. Tajā ir trīs testi, viens pēc otra. Tiklīdz viens nosacījums ir `True`, Raku izpilda tā koda bloku. Ja neviens tests nav `True`, Raku izpilda `else` bloku.

Šeit ir dažas programmas testa izpildes. Kopā tās izmanto visus blokus:

```console
$ raku t.raku
Enter the number: 120
120 is bigger than 100.

$ raku t.raku
Enter the number: 75      
75 is bigger than 50.

$ raku t.raku
Enter the number: 30
30 is bigger than 25.

$ raku t.raku
Enter the number: 10
10 is 25 or smaller.
```

Cits veids ir pāris [`given` un `when`](/lv/advanced/given-when). Mēs to apgūsim vēlāk.

{% include nav.html %}
