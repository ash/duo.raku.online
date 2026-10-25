---
title: Variableninterpolation
---

{% include menu.html %}

In den vorherigen Abschnitten standen manche Strings in einfachen und manche in doppelten Anführungszeichen. Haben Sie das bemerkt? Dieser Unterschied ist sehr wichtig.

Natürlich ist es mit doppelten Anführungszeichen leicht, ein einfaches Anführungszeichen in einen String zu setzen:

```raku
say "O'Henry";
```

Übrigens ist ein richtiger Apostroph trotzdem besser als ein einfaches Anführungszeichen. Schließlich [kann Raku gut mit Unicode umgehen](../../on-unicode).

```raku
say 'O’Henry';
```

Aber die wahre Stärke der doppelten Anführungszeichen ist, dass sie Variablen _interpolieren_ können. Wie wir bald sehen werden, können sie sogar Code ausführen! Sehen Sie sich dieses Programm an:

```raku
my $name = 'Karl';
say "Hallo, $name!";
```

Wie Sie wahrscheinlich erwarten, gibt das Programm `Hallo, Karl!` aus. Der Wert der Variablen hat den Namen `$name` zusammen mit seinem Sigil `$` ersetzt.

Der interpolierte Wert ist der Wert, den die Variable im Moment der Interpolation hat. Wenn Sie also `$name` ändern und die Variable noch einmal interpolieren, wird der neue Wert verwendet. Testen wir das:

```raku
my $name = 'Karl';
say "Hallo, $name!";

$name = 'Anna';
say "Hallo, $name!";
```

Diesmal erzeugt derselbe String unterschiedliche Nachrichten:

    Hallo, Karl!
    Hallo, Anna!

{% include nav.html %}
