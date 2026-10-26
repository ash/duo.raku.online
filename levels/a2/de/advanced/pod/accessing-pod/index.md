---
title: Auf Pod zugreifen
---

{% include menu.html %}

Du kannst Pod als formatierten Text zeigen. Aber ein Programm kann sein eigenes Pod auch **von innen** lesen. Das macht es, während es läuft. Die spezielle Variable `$=pod` enthält das Pod der aktuellen Datei. Sie ist eine Liste von Block-Objekten. So kann ein Programm seine eigene Dokumentation ansehen:

```raku
=begin pod
=head1 Hello
A paragraph.
=end pod

say $=pod.elems;      # 1
say $=pod[0].name;    # pod
```

Hier hat `$=pod` ein Element: den `pod`-Block. Du kannst in diesen Block hineingehen. Dort kannst du Überschriften, Absätze und Listenpunkte als Daten lesen. Manche Werkzeuge machen Dokumentation. Andere Werkzeuge testen, ob die Dokumentation da ist. All diese Werkzeuge brauchen das. Du kannst die Dokumentation mit `--doc` zeigen. Oder du kannst sie über `$=pod` lesen. In beiden Fällen ist sie ein echter Teil des Programms. Sie ist kein Kommentar, und Raku wirft sie nicht weg.

{% include nav.html %}
