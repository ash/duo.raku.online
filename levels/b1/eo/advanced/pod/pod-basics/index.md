---
title: Pod-bazaĵoj
translations_gpt:
---

{% include menu.html %}

Pod-dokumentado loĝas en via fontdosiero. Linioj, kiuj komenciĝas per `=`, markas, kie ĝi estas. La plej simpla maniero estas skribi ĝin inter `=begin pod` kaj `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Ene de la bloko, direktivoj priskribas la strukturon:

* `=head1`, `=head2`, … — titoloj de malsamaj niveloj
* ordinara alineo — nur teksto sur propraj linioj
* `=item` — ero en listo kun bulpunktoj

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

La linio `=head1` estas supranivela titolo. La tri linioj `=item` faras liston. Pod sidas apud via kodo, sed ne ŝanĝas, kiel ĝi funkcias. La kompililo ignoras ĝin, kiam ĝi rulas la programon. Sed kiam vi petas, ĝi povas elpreni la Pod kaj bildigi ĝin. Posta temo montras tion.

{% include nav.html %}
