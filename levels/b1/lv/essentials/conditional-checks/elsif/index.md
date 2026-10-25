---
title: 'Izmantojot `elsif`'
---

{% include menu.html %}

Līdz šim mēs esam iemācījušies `if` un `else`. Bet ko darīt, ja vēlaties izveidot testu ķēdi? Raku valodā ir vismaz divi veidi, kā to izdarīt. Patiesībā to ir vēl vairāk.

Viens veids ir izmantot `if`, `elsif` un `else` bloku ķēdi. Ievērojiet, kā raksta `elsif`. Tas nav `elseif`, un tas nav arī `else if`.

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

Šajā programmā ir trīs zari un trīs testi, viens pēc otra. Tiklīdz kāds no nosacījumiem ir `True`, izpildās atbilstošais koda bloks. Ja neviena pārbaude nav `True`, izpildās `else` bloks.

Šeit ir dažas programmas testa izpildes. Katrs bloks izpildās vienā no tām:

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

Cits veids ir izmantot pāri [`given` un `when`](/lv/advanced/given-when), ko mēs apgūsim vēlāk.

{% include nav.html %}
