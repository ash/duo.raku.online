---
title: Pod accedere
translations_gpt:
---

{% include menu.html %}

Pod ut textus formatus ostendi potest. Sed programma etiam suum Pod **ab intus** legere potest, dum currit. Variabilis specialis `$=pod` Pod fasciculi praesentis continet. Est index obiectorum truncorum. Itaque programma suam documentationem inspicere potest:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Hic `$=pod` unum elementum habet, truncum `pod`. In eum descendere et titulos, paragraphos et elementa ut data legere potes. Instrumenta quae documentationem faciunt, vel probant eam adesse, ab hoc pendent. Documentatio cum `--doc` ostendi vel per `$=pod` legi potest. Utroque modo plena pars programmatis est. Non est commentarium quod abici debet.

{% include nav.html %}
