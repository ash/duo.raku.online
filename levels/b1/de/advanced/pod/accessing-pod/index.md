---
title: Auf Pod zugreifen
---

{% include menu.html %}

Pod kann als formatierter Text angezeigt werden. Aber ein Programm kann sein eigenes Pod auch **von innen** lesen, während es läuft. Die spezielle Variable `$=pod` enthält das Pod der aktuellen Datei. Sie ist eine Liste von Block-Objekten. So kann ein Programm seine eigene Dokumentation ansehen:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Hier hat `$=pod` ein Element, den `pod`-Block. Du kannst in ihn hineingehen und Überschriften, Absätze und Listenpunkte als Daten lesen. Werkzeuge brauchen das, wenn sie Dokumentation erzeugen oder testen, ob sie da ist. Die Dokumentation kann mit `--doc` angezeigt oder über `$=pod` gelesen werden. In beiden Fällen ist sie ein echter Teil des Programms. Sie ist kein Kommentar, der weggeworfen wird.

{% include nav.html %}
