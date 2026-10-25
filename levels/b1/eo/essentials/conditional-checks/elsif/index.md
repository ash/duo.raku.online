---
title: 'Uzante `elsif`'
---

{% include menu.html %}

Ĝis nun ni lernis `if` kaj `else`. Sed kion fari, se vi volas fari ĉenon de testoj? Raku havas almenaŭ du manierojn por tio. Fakte, estas eĉ pli.

Unu maniero estas uzi ĉenon de `if`, `elsif` kaj `else` blokoj. Notu, kiel oni skribas `elsif`. Ĝi ne estas `elseif`, kaj ĝi ne estas `else if`.

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

Ĉi tiu programo havas tri branĉojn kaj tri testojn, unu post la alia. Tuj kiam unu el la kondiĉoj estas `True`, la responda bloko de kodo ruliĝas. Se neniu el la kontroloj estas `True`, la `else` bloko ruliĝas.

Jen kelkaj provaj ruloj de la programo. Ĉiu bloko ruliĝas en unu el ili:

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

Alia maniero estas uzi la paron [`given` kaj `when`](/eo/advanced/given-when), kiun ni lernos poste.

{% include nav.html %}
