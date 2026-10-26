---
title: Aliri la Pod
translations_gpt:
---

{% include menu.html %}

Vi povas montri Pod kiel formatitan tekston. Sed programo ankaŭ povas legi sian propran Pod de **interne**. Ĝi faras tion, dum ĝi ruliĝas. La speciala variablo `$=pod` tenas la Pod de la nuna dosiero. Ĝi estas listo de blokobjektoj. Do programo povas rigardi sian propran dokumentadon:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Ĉi tie `$=pod` havas unu elementon: la blokon `pod`. Vi povas iri en ĉi tiun blokon. Tie vi povas legi titolojn, alineojn kaj erojn kiel datumojn. Iuj iloj faras dokumentadon. Aliaj iloj testas, ke la dokumentado estas tie. Ĉiuj ĉi tiuj iloj bezonas tion. Vi povas montri la dokumentadon per `--doc`. Aŭ vi povas legi ĝin per `$=pod`. En ambaŭ kazoj, ĝi estas vera parto de la programo. Ĝi ne estas komento, kaj Raku ne forĵetas ĝin.

{% include nav.html %}
