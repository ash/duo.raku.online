---
title: Einen Trait schreiben
translations_gpt:
---

{% include menu.html %}

Traits sind gewöhnliche Multi-Subroutinen mit einem speziellen Namen, also können Sie eigene schreiben. Um ein Trait namens `is something` hinzuzufügen, definieren Sie ein `multi sub trait_mod:<is>`. Seine Parameter sagen, worauf das Trait wirkt, und geben ihm seinen Namen:

Das ist einer der fortgeschritteneren Teile von Raku. Machen Sie sich keine Sorgen, wenn es kompliziert wirkt. Sie können die eingebauten Traits sehr gut benutzen, ohne zu wissen, wie sie gemacht sind. Sie werden selten selbst ein Trait schreiben müssen. Sehen Sie diese Seite also als einen Blick darauf, wie die Dinge innen funktionieren.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Lesen Sie die Signatur. Der erste Parameter, `Routine:D $r`, ist das Element, an dem das Trait hängt. Hier ist es eine Subroutine. Das `:D` ist ein Typ-_Smiley_, der einen **definierten** Wert verlangt. Das bedeutet ein echtes Routine-Objekt, nicht den undefinierten Typ `Routine` selbst. Seine Partner sind `:U`, das das undefinierte Typ-Objekt verlangt, und `:_`, das beides akzeptiert. Der benannte Parameter `:$traced!` ist der Name des Traits selbst. Weil dieser Parameter da ist, ruft `is traced` diese Sub auf. Traits laufen zur **Kompilierzeit**. Also werden `foo` und `bar` gespeichert, sobald sie deklariert werden. Wenn das Programm läuft, listet `@traced` sie schon auf. Sie könnten die Zeile `say @traced` sogar über die zwei `sub`-Definitionen schieben. Die Zeile würde trotzdem `[foo bar]` ausgeben.

Dieses kleine Trait speichert nur Namen, aber die gleiche Idee kann viel mehr. Ein Trait kann eine Routine umhüllen, um Protokollierung hinzuzufügen, ein Attribut prüfen oder Metadaten hinzufügen. Der erste Parameter kann statt einer `Routine` auch ein `Attribute` oder eine `Variable` sein. Dann gilt das Trait für Attribute oder Variablen. Mit Traits hält Raku seine Syntax für Deklarationen offen. Das eingebaute `is rw` und Ihr eigenes `is traced` sind auf die gleiche Weise gemacht.

{% include nav.html %}
