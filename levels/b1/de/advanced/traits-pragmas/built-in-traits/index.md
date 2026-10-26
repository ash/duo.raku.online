---
title: Eingebaute Traits
translations_gpt:
---

{% include menu.html %}

Ein _Trait_ wird mit dem Schlüsselwort `is` direkt nach einer Deklaration hinzugefügt. Es läuft zur Kompilierzeit. Es ändert eine feste Eigenschaft des Elements, zu dem es gehört. Raku bringt viele Traits mit, und Sie haben schon einige benutzt.

Standardmäßig sind die Parameter einer Subroutine **schreibgeschützt**. Sie können ihnen in der Routine nichts zuweisen. Das Trait `is copy` gibt Ihnen eine private Kopie des Arguments, die Sie ändern können. Die Änderung hat keine Wirkung auf den Aufrufer:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Das Trait `is rw` geht noch weiter. Es bindet den Parameter an die Variable des Aufrufers. Also ist eine Änderung in der Routine auch außerhalb sichtbar:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Ohne eines dieser Traits würde `$n++` einen Fehler auslösen. Der Parameter wäre schreibgeschützt.

Ein weiteres häufiges Trait setzt einen Standardwert:

```raku
my $port is default(8080);
say $port; # 8080
```

Hier gibt `is default` der Variablen einen Wert, den sie nutzt, wenn es keinen anderen Wert gibt. Es gibt viele eingebaute Traits, zum Beispiel `is rw`, `is copy` und `is default`. Jedes davon gibt einer Deklaration zur Kompilierzeit ein bestimmtes Verhalten. Das nächste Thema zeigt, dass die Menge der Traits nicht geschlossen ist. [Sie können eigene definieren](/de/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
