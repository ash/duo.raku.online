---
title: Pod pamati
translations_gpt:
---

{% include menu.html %}

Pod dokumentācija dzīvo jūsu pirmkoda failā. Rindas, kas sākas ar `=`, parāda, kur tā atrodas. Vienkāršākais veids ir to uzrakstīt starp `=begin pod` un `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Bloka iekšpusē direktīvas apraksta struktūru:

* `=head1`, `=head2`, … — dažādu līmeņu virsraksti
* parasta rindkopa — vienkārši teksts savās rindās
* `=item` — punkts sarakstā ar aizzīmēm

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

Rinda `=head1` ir augstākā līmeņa virsraksts. Trīs `=item` rindas veido sarakstu. Pod atrodas blakus jūsu kodam, bet nemaina to, kā kods darbojas. Kompilators to ignorē, kad palaiž programmu. Bet, kad jūs to prasāt, tas var izņemt Pod un to atveidot. To parāda vēlāks temats.

{% include nav.html %}
