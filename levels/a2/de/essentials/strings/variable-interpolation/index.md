---
title: Variableninterpolation
---

{% include menu.html %}

In den letzten Abschnitten standen manche Strings in einfachen Anführungszeichen. Andere Strings standen in doppelten Anführungszeichen. Haben Sie das bemerkt? Der Unterschied ist sehr wichtig.

Brauchen Sie ein einfaches Anführungszeichen in einem String? Am einfachsten verwenden Sie natürlich doppelte Anführungszeichen:

```raku
say "O'Henry";
```

Übrigens ist ein echter Apostroph trotzdem besser als ein einfaches Anführungszeichen. Der Grund ist: [Raku kann gut mit Unicode umgehen](../../on-unicode).

```raku
say 'O’Henry';
```

Aber die wahre Stärke der doppelten Anführungszeichen ist etwas anderes. Sie können Variablen _interpolieren_. Bald sehen wir, dass sie auch Code ausführen können! Sehen Sie sich dieses Programm an:

```raku
my $name = 'Karl';
say "Hallo, $name!";
```

Wie Sie sich denken können, gibt das Programm `Hallo, Karl!` aus. Raku nimmt den Namen `$name` mit dem Sigil `$` weg. Dann setzt Raku den Wert der Variablen an diese Stelle.

Raku verwendet den Wert der Variablen im Moment der Interpolation. Sie können den Wert von `$name` ändern. Dann interpolieren Sie die Variable noch einmal. Jetzt bekommt der String den neuen Wert. Testen wir das:

```raku
my $name = 'Karl';
say "Hallo, $name!";

$name = 'Anna';
say "Hallo, $name!";
```

Diesmal ergibt derselbe String andere Nachrichten:

    Hallo, Karl!
    Hallo, Anna!

{% include nav.html %}
