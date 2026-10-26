---
title: Pod accedere
translations_gpt:
---

{% include menu.html %}

Pod ut textum formatum ostendere potes. Sed programma etiam suum Pod **ab intus** legere potest. Hoc facit dum currit. Variabilis specialis `$=pod` Pod huius fasciculi tenet. Est index obiectorum truncorum. Itaque programma suam documentationem inspicere potest:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Hic `$=pod` unum elementum habet: truncum `pod`. In hunc truncum intrare potes. Ibi titulos, paragraphos et elementa ut data legere potes. Quaedam instrumenta documentationem faciunt. Alia instrumenta probant documentationem adesse. Omnia haec instrumenta hoc requirunt. Documentationem cum `--doc` ostendere potes. Aut eam per `$=pod` legere potes. Utroque modo vera pars programmatis est. Commentarium non est, et Raku eam non abicit.

{% include nav.html %}
