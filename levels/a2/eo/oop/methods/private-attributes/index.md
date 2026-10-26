---
title: Privataj atributoj
translations_gpt:
---

{% include menu.html %}

En la [sekcio pri atributoj](/eo/oop/attributes), ĉiu atributo havis `$.` en sia nomo. `$.` kreas publikan atingilon. Ĉiu ekster la objekto povas uzi ĝin. Sed vi ankaŭ povas skribi `$!` anstataŭe. Tiam la atributo estas _privata_. Ĝi ne havas atingilon. Kodo ekster la objekto ne povas vidi ĝin. Nur la metodoj de la klaso povas uzi ĝin. Tie vi skribas ĝin kiel `$!name`.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

La sekreta `$!code` estas en la objekto. Sed neniu ekstere povas vidi ĝin. Ne estas atingilo `.code`. La sola maniero uzi la kodon estas la metodo `unlocks`. La klaso donas al vi ĉi tiun metodon intence. Legi `$safe.code` aŭ `$safe!code` simple malsukcesas.

Privataj atributoj estas bonaj por detaloj en la objekto. La resto de la programo ne tuŝu ilin rekte.

{% include nav.html %}
