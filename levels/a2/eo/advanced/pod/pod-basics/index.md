---
title: Pod-bazaĵoj
translations_gpt:
---

{% include menu.html %}

Pod-dokumentado estas en via fontdosiero. Specialaj linioj markas ĝin. Ĉi tiuj linioj komenciĝas per `=`. La plej simpla maniero estas bloko de Pod. Metu ĝin inter `=begin pod` kaj `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

En la bloko, direktivoj montras la strukturon de la teksto:

* `=head1`, `=head2`, … — titoloj de malsamaj niveloj
* normala alineo — nur teksto sur propraj linioj
* `=item` — unu ero en listo kun bulpunktoj

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

La linio `=head1` estas supranivela titolo. La tri linioj `=item` faras liston. Pod estas apud via kodo. Sed ĝi ne ŝanĝas la kodon. La kompililo ignoras la Pod, kiam ĝi rulas la programon. Sed la kompililo ankaŭ povas elpreni la Pod. Tiam ĝi montras la Pod kiel tekston. Ĝi faras tion, kiam vi petas. Posta temo montras tion.

{% include nav.html %}
