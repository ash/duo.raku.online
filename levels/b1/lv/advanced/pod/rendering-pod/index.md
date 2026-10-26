---
title: Pod renderēšana
translations_gpt:
---

{% include menu.html %}

Kad failā ir Pod, kompilators var to pārvērst formatētā tekstā. Programma tam nav jāpalaiž. Lai to izdarītu, izmantojiet opciju `--doc`:

```
raku --doc mymodule.raku
```

Iepriekšējam piemēram ar virsrakstu un rindkopu tas izdrukā apmēram šo:

```
My Module

This module does something useful.
```

Var atveidot arī sarakstus un koda blokus. Ņemiet par piemēru šo Pod:

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

Kad jūs to atveidojat ar `raku --doc`, tas izdrukā:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Katrs `=item` kļūst par punktu ar aizzīmi. Bloks `=begin code … =end code` tiek parādīts ar atkāpi un tieši tā, kā tas tika uzrakstīts.

## Atveidošana HTML formātā

Šādi var iegūt arī citus formātus. HTML formātam jūs vienreiz instalējat atveidotāja moduli un pēc tam norādāt tā nosaukumu aiz `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Tagad tieši tas pats dokuments iznāk kā HTML. Virsraksts kļūst par `<h1>`, un saraksts kļūst par `<ul>` ar `<li>` punktiem. Koda bloks kļūst par `<pre>`:

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

Rīks to ieliek pilnā HTML lappusē. Oficiālā Raku dokumentācija vietnē [docs.raku.org](https://docs.raku.org) tiek veidota tieši tā. Tā rodas no Pod pirmkoda failiem.

{% include nav.html %}
