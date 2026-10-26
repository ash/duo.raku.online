---
title: Formatēšana un kods
translations_gpt:
---

{% include menu.html %}

Pod tekstā jūs iezīmējat vārdus ar _formatēšanas kodiem_. Katrs kods ir viens burts. Pēc burta jūs liekat leņķa iekavas ap tekstu:

* `B<…>` — treknraksts
* `I<…>` — kursīvs
* `C<…>` — kods (visiem burtiem ir vienāds platums)
* `L<…>` — saite

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Formatētajā tekstā `important` ir treknrakstā. `say` ir koda fontā. Jūs varat ielikt vienu kodu citā kodā. Šādi jūs tos apvienojat. Tāpēc `B<C<say>>` ir trekns kods.

Dažreiz jums vajag veselu koda bloku. Ar īsu gabalu rindas iekšpusē nepietiek. Tad izmantojiet koda bloku: `=begin code … =end code`. Tam ir rinda sākumā un rinda beigās. Tas saglabā tekstu tieši tādu, kāds tas ir:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Rindas koda blokā parādās tieši tā, kā jūs tās uzrakstāt. Raku tās nelasa kā Pod. Tātad Pod piedāvā kodus rindu iekšpusē, un tas piedāvā arī koda blokus. Ar tiem jūs varat aprakstīt API. API ir veids, kā citas programmas izmanto jūsu kodu. Jūs rakstāt formatētu tekstu un piemērus. Piemēri izskatās kā kods, ko var palaist. Tas viss paliek blakus kodam, ko tas apraksta.

{% include nav.html %}
