---
title: Einen Trait schreiben
translations_gpt:
---

{% include menu.html %}

Traits sind normale Multi-Subroutinen mit einem speziellen Namen. Also können Sie eigene Traits schreiben. Möchten Sie ein Trait `is something`? Dann definieren Sie ein `multi sub trait_mod:<is>`. Seine Parameter sagen zwei Dinge. Erstens sagen sie, worauf das Trait wirkt. Zweitens geben sie den Namen des Traits an:

Das ist einer der schwereren Teile von Raku. Keine Sorge, wenn es schwierig aussieht. Sie können die eingebauten Traits auch ohne dieses Wissen gut benutzen. Sie müssen nicht wissen, wie sie gemacht sind. Sie müssen nur selten selbst ein Trait schreiben. Diese Seite zeigt Ihnen nur, wie Traits innen funktionieren.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Sehen Sie sich die Signatur an. Der erste Parameter ist `Routine:D $r`. Er ist das Element, das das Trait hat. Hier ist es eine Subroutine. Das `:D` ist ein Typ-_Smiley_. Er braucht einen **definierten** Wert. Das ist ein echtes Routine-Objekt. Es ist nicht der undefinierte Typ `Routine` selbst. Es gibt noch zwei andere Smileys. `:U` braucht das undefinierte Typ-Objekt. `:_` nimmt beides. Der benannte Parameter `:$traced!` ist der Name des Traits. Wegen dieses Parameters ruft `is traced` diese Sub auf. Traits laufen zur **Kompilierzeit**. Also speichert Raku `foo` und `bar` schon, wenn es ihre Deklarationen liest. Wenn das Programm läuft, hat `@traced` schon beide Namen. Sie können die Zeile `say @traced` sogar nach oben schieben, über die zwei `sub`-Definitionen. Die Zeile gibt trotzdem `[foo bar]` aus.

Dieses kleine Trait speichert nur Namen. Aber die gleiche Idee kann viel mehr. Zum Beispiel kann ein Trait eine Routine umhüllen und Protokollierung hinzufügen. Es kann ein Attribut prüfen. Oder es kann Metadaten anhängen, also zusätzliche Daten über den Code. Hier ist der erste Parameter eine `Routine`. Sie können ihn auch zu einem `Attribute` oder einer `Variable` machen. Dann arbeitet das Trait mit Attributen oder Variablen. Traits halten die Syntax von Deklarationen in Raku offen. Sie können immer neue Traits hinzufügen. Das eingebaute `is rw` und Ihr eigenes `is traced` sind auf die gleiche Weise gemacht.

{% include nav.html %}
