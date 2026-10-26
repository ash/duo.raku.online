---
title: Aliri la Pod
translations_gpt:
---

{% include menu.html %}

Oni povas montri Pod kiel formatitan tekston. Sed programo ankaŭ povas legi sian propran Pod de **interne**, dum ĝi ruliĝas. La speciala variablo `$=pod` tenas la Pod de la nuna dosiero. Ĝi estas listo de blokobjektoj. Do programo povas rigardi sian propran dokumentadon:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Ĉi tie `$=pod` havas unu elementon, la blokon `pod`. Vi povas eniri ĝin kaj legi titolojn, alineojn kaj erojn kiel datumojn. Iloj, kiuj kreas dokumentadon aŭ testas, ke ĝi ekzistas, dependas de tio. Oni povas montri la dokumentadon per `--doc` aŭ legi ĝin per `$=pod`. Ĉiukaze ĝi estas plena parto de la programo. Ĝi ne estas komento, kiun oni forĵetas.

{% include nav.html %}
