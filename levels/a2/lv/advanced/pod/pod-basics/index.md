---
title: Pod pamati
translations_gpt:
---

{% include menu.html %}

Pod dokumentācija atrodas jūsu pirmkoda failā. To iezīmē īpašas rindas. Šīs rindas sākas ar `=`. Vienkāršākais veids ir Pod bloks. Ielieciet to starp `=begin pod` un `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Bloka iekšpusē direktīvas parāda teksta struktūru:

* `=head1`, `=head2`, … — dažādu līmeņu virsraksti
* parasta rindkopa — vienkārši teksts savās rindās
* `=item` — viens punkts sarakstā ar aizzīmēm

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

Rinda `=head1` ir augstākā līmeņa virsraksts. Trīs `=item` rindas veido sarakstu. Pod atrodas blakus jūsu kodam. Bet tas nemaina kodu. Kompilators izlaiž Pod, kad palaiž programmu. Bet kompilators var arī izņemt Pod. Tad tas parāda Pod kā tekstu. Tas to dara, kad jūs to prasāt. To parāda vēlāks temats.

{% include nav.html %}
