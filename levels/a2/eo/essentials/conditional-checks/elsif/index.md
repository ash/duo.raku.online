---
title: 'Uzante `elsif`'
---

{% include menu.html %}

Nun vi konas `if` kaj `else`. Sed kion fari, se vi bezonas multajn testojn, unu post la alia? Raku havas almenaŭ du manierojn por tio. Fakte, ĝi havas eĉ pli.

Unu maniero estas ĉeno de blokoj: `if`, `elsif` kaj `else`. Rigardu, kiel ni skribas `elsif`. Ĝi ne estas `elseif`. Ĝi ankaŭ ne estas `else if`.

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

Ĉi tiu programo havas tri branĉojn. Ĝi havas tri testojn, unu post la alia. Tuj kiam unu kondiĉo estas `True`, Raku rulas ĝian blokon de kodo. Se neniu testo estas `True`, Raku rulas la `else` blokon.

Jen kelkaj provaj ruloj de la programo. Kune ili uzas ĉiujn blokojn:

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

Alia maniero estas la paro [`given` kaj `when`](/eo/advanced/given-when). Ni lernos ĝin poste.

{% include nav.html %}
