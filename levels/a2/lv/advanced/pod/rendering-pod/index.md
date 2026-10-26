---
title: Pod renderēšana
translations_gpt:
---

{% include menu.html %}

Varbūt jūsu failā ir Pod. Tad kompilators var to pārvērst formatētā tekstā. Programmu tas šim nepalaiž. Izmantojiet opciju `--doc`:

```
raku --doc mymodule.raku
```

Ņemiet iepriekšējo piemēru ar virsrakstu un rindkopu. Tam komanda izdrukā apmēram šo:

```
My Module

This module does something useful.
```

Tas darbojas arī ar sarakstiem un koda blokiem. Apskatiet šo Pod:

```raku
=begin pod

=head1 Shopping list

Things to buy:

=item Apples
=item Bread
=item Cheese

Run it like this:

=begin code
say 'hello';
=end code

=end pod
```

Ar `raku --doc` tas izdrukā šo:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Katrs `=item` kļūst par punktu ar aizzīmi. Bloks `=begin code … =end code` pārvietojas nedaudz pa labi. Tā teksts paliek tieši tāds, kādu jūs to uzrakstījāt.

## Pod pārvēršana HTML formātā

Tādā pašā veidā jūs varat iegūt arī citus formātus. HTML formātam instalējiet atveidotāja moduli. To jūs darāt tikai vienreiz. Tad uzrakstiet tā nosaukumu aiz `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Tagad tas pats dokuments iznāk kā HTML. Virsraksts kļūst par `<h1>`. Saraksts kļūst par `<ul>` ar `<li>` punktiem. Koda bloks kļūst par `<pre>`:

```html
<h1>Shopping list</h1>
<p>Things to buy:</p>
<ul>
  <li>Apples</li>
  <li>Bread</li>
  <li>Cheese</li>
</ul>
<p>Run it like this:</p>
<pre class="pod-block-code">say 'hello';</pre>
```

Rīks to arī ieliek pilnā HTML lappusē. Oficiālo Raku dokumentāciju vietnē [docs.raku.org](https://docs.raku.org) veido tieši tā. Tā rodas no Pod failiem.

{% include nav.html %}
