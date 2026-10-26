---
title: Modula introspekto
translations_gpt:
---

{% include menu.html %}

La nomo de modulo kreas _pakaĵon_. Pakaĵo estas nomspaco, kiu enhavas la nomojn difinitajn en la modulo. Pli frue, en [la sekcio pri ujoj](/eo/advanced/containers), vi renkontis `WHO`. Ĝi redonas la `Stash`, aŭ simboltabelon, de pakaĵo. Modula introspektado utiligas tion.

La ekzemploj sube uzas la modulon `Greeting`, kiun ni konstruis en la antaŭaj temoj. Ĝi havas eksportitan subrutinon kaj dividatan `our`-variablon:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Vi skribas la pakaĵon de modulo kun `::` ĉe la fino. Kun `.keys` vi listigas la nomojn, kiujn ĝi enhavas:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

La modulo `Greeting` el la antaŭaj temoj difinas `our`-variablon, `$version`. Do ĝia pakaĵo enhavas ĉi tiun nomon, kune kun ĝia sigelo. Apud ĝi estas `EXPORT`, kiu eble ŝajnas surpriza. Ĝi estas pakaĵo, kiun Raku kreas aŭtomate. Ĝi enhavas ĉion, kion modulo markas per `is export`, ekzemple la subrutinon `hello`. Do eksportita nomo _ne_ aperas rekte en la pakaĵo. Ĝi loĝas ene de la sub-pakaĵo `EXPORT`. La ŝlosiloj ne revenas en fiksita ordo. Tial la ekzemplo ordigas ilin, por ke la rezulto estu ĉiam la sama.

Vi ankaŭ povas serĉi nomon en la pakaĵo. Simple uzu la nomon kiel ŝlosilon. Tio donas la saman valoron kiel la kvalifikita nomo `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Listigo de tio, kion modulo eksportas

La eksportitaj nomoj efektive loĝas en la pakaĵo `EXPORT`, kiun vi vidis supre. Do vi povas listigi ilin, se vi rigardas unu nivelon pli profunde. Eksportaĵoj sen etikedo iras en la grupon `DEFAULT` (vidu [Eksportaj etikedoj](/eo/advanced/modules-basics/export-tags)). La `.keys` de ĉi tiu grupo estas la eksportitaj rutinoj:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Ĉiu ŝlosilo estas eksportita nomo kun sia sigelo. Ĉi tie ĝi estas la sola subrutino, `&hello`, kun la `&`, kiu markas rutinon. Tiel vi povas ekscii, kion modulo proponas al siaj uzantoj. Vi ne bezonas legi ĝian fontkodon. Simple demandu al ĝia pakaĵo `EXPORT::DEFAULT`, kion ĝi enhavas.

Rigardi en pakaĵon tiel estas utile en du kazoj. Eble vi volas ekscii, kion modulo provizas. Aŭ eble vi volas atingi ĝiajn nomojn, dum la programo ruliĝas. Tiam vi ne devas skribi ĉiun el ili en la fontkodo.

{% include nav.html %}
