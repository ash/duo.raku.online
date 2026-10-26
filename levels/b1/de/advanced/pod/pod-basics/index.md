---
title: Pod-Grundlagen
---

{% include menu.html %}

Pod-Dokumentation steht in deiner Quelldatei. Zeilen, die mit `=` beginnen, zeigen, wo sie ist. Am einfachsten schreibst du sie zwischen `=begin pod` und `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Im Block beschreiben Direktiven die Struktur:

* `=head1`, `=head2`, … — Überschriften auf verschiedenen Ebenen
* ein gewöhnlicher Absatz — einfach Text in eigenen Zeilen
* `=item` — ein Eintrag in einer Liste mit Aufzählungspunkten

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

Die Zeile `=head1` ist eine Überschrift der obersten Ebene. Die drei `=item`-Zeilen bilden eine Liste. Pod steht neben deinem Code, ändert aber nicht, wie er funktioniert. Der Compiler ignoriert es, wenn er das Programm ausführt. Aber wenn du ihn darum bittest, kann er das Pod herausholen und rendern. Ein späteres Thema zeigt das.

{% include nav.html %}
