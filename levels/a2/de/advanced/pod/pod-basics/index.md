---
title: Pod-Grundlagen
---

{% include menu.html %}

Pod-Dokumentation steht in deiner Quelldatei. Besondere Zeilen markieren sie. Diese Zeilen fangen mit `=` an. Am einfachsten ist ein Block aus Pod. Schreib ihn zwischen `=begin pod` und `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Im Block zeigen Direktiven die Struktur des Textes:

* `=head1`, `=head2`, … — Überschriften auf verschiedenen Ebenen
* ein normaler Absatz — einfach Text in eigenen Zeilen
* `=item` — ein Eintrag in einer Liste mit Aufzählungspunkten

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

Die Zeile `=head1` ist eine Überschrift der obersten Ebene. Die drei `=item`-Zeilen bilden eine Liste. Pod steht neben deinem Code. Aber es ändert den Code nicht. Der Compiler überspringt das Pod, wenn er das Programm ausführt. Aber der Compiler kann das Pod auch herausholen. Dann zeigt er das Pod als Text. Das macht er, wenn du ihn fragst. Ein späteres Thema zeigt das.

{% include nav.html %}
