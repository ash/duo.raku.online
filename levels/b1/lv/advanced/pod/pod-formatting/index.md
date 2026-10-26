---
title: Formatēšana un kods
translations_gpt:
---

{% include menu.html %}

Pod tekstā jūs izceļat vārdus ar viena burta _formatēšanas kodiem_. Jūs rakstāt burtu un pēc tam leņķa iekavas ap tekstu:

* `B<…>` — treknraksts
* `I<…>` — kursīvs
* `C<…>` — kods (visi burti ir vienādā platumā)
* `L<…>` — saite

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Pēc atveidošanas `important` ir redzams treknrakstā, bet `say` — koda fontā. Kodus var likt vienu otrā un apvienot, tāpēc `B<C<say>>` ir trekns kods.

Dažreiz jums vajag veselu koda bloku, nevis tikai gabalu rindas iekšpusē. Tad izmantojiet koda bloku ar skaidrām sākuma un beigu rindām, `=begin code … =end code`. Tas saglabā tekstu tieši tā, kā tas uzrakstīts:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Rindas koda bloka iekšpusē tiek parādītas tieši tā, kā uzrakstītas. Tās netiek lasītas kā Pod. Ar iekļautajiem kodiem un koda blokiem kopā Pod var dokumentēt API. Tajā var būt formatēts teksts un piemēri, kas izskatās pēc īsta, strādājoša koda. Tas viss paliek blakus kodam, ko tas apraksta.

{% include nav.html %}
