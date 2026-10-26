---
title: Privataj atributoj
translations_gpt:
---

{% include menu.html %}

En la [sekcio pri atributoj](/eo/oop/attributes), ni deklaris ĉiun atributon per `$.`. Tio kreas publikan atingilon. Se vi deklaras atributon per `$!` anstataŭe, ĝi estas _privata_. Ĝi ne havas atingilon, kaj vi ne povas vidi ĝin de ekster la objekto. Nur la propraj metodoj de la klaso povas atingi ĝin. Tie vi skribas ĝin kiel `$!name`.

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

La sekreta `$!code` estas konservata en la objekto, sed ĝi neniam estas montrata ekstere. Ne estas atingilo `.code`. Do vi povas labori kun ĝi nur tra la metodo `unlocks`. La klaso elektas provizi ĉi tiun metodon. Se vi provas legi `$safe.code` aŭ `$safe!code`, tio simple malsukcesas.

Privataj atributoj estas utilaj por internaj detaloj. La resto de la programo ne devus labori kun tiuj detaloj rekte.

{% include nav.html %}
