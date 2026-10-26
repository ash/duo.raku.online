---
title: Eingebaute Traits
translations_gpt:
---

{% include menu.html %}

Ein _Trait_ fügen Sie mit dem Schlüsselwort `is` hinzu, direkt nach einer Deklaration. Ein Trait läuft zur Kompilierzeit. Es ändert eine feste Eigenschaft des Elements, das das Trait hat. Raku hat viele Traits. Sie haben schon ein paar davon benutzt.

Normalerweise sind die Parameter einer Subroutine **schreibgeschützt**. Sie können ihnen in der Routine keine neuen Werte zuweisen. Das Trait `is copy` gibt Ihnen eine eigene Kopie des Arguments. Diese Kopie können Sie ändern. Die Änderung bleibt in der Routine. Die Variable des Aufrufers bleibt gleich:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Das Trait `is rw` geht weiter. Es verbindet den Parameter mit der Variablen des Aufrufers. Sie ändern den Parameter in der Routine. Dann sieht man die Änderung auch außerhalb:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Ohne eines dieser Traits gibt `$n++` einen Fehler. Denn der Parameter ist schreibgeschützt.

Ein weiteres häufiges Trait setzt einen Standardwert:

```raku
my $port is default(8080);
say $port; # 8080
```

Hier gibt `is default` der Variablen einen Standardwert. Die Variable hat diesen Wert, wenn nichts anderes in ihr steht. Es gibt viele eingebaute Traits: `is rw`, `is copy`, `is default` und mehr. Jedes davon gibt einer Deklaration ein besonderes Verhalten. Das passiert zur Kompilierzeit. Das nächste Thema zeigt, dass die Liste der Traits nicht geschlossen ist. [Sie können eigene Traits machen](/de/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
