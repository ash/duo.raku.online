---
title: Modula introspekto
translations_gpt:
---

{% include menu.html %}

La nomo de modulo ankaŭ kreas _pakaĵon_. Pakaĵo estas nomspaco. Ĝi tenas la nomojn el la modulo. Pli frue, en [la sekcio pri ujoj](/eo/advanced/containers), vi vidis `WHO`. Ĝi redonas la `Stash` de pakaĵo. La `Stash` estas la tabelo de simboloj, aŭ nomoj, en la pakaĵo. Modula introspektado uzas tion. Per ĝi, programo rigardas en modulon.

La ekzemploj sube uzas la modulon `Greeting` el la antaŭaj temoj. Ĝi havas subrutinon, kiun ĝi eksportas. Ĝi ankaŭ havas dividatan `our`-variablon:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Por ricevi la pakaĵon de modulo, skribu `::` post ĝia nomo. Poste aldonu `.keys`. Ĝi listigas la nomojn en la pakaĵo:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

La modulo `Greeting` el la antaŭaj temoj havas `our`-variablon, `$version`. Do ĝia pakaĵo havas ĉi tiun nomon. La nomo enhavas ankaŭ la sigelon. Apud ĝi, vi vidas `EXPORT`. Tio eble surprizas vin. Ankaŭ `EXPORT` estas pakaĵo. Raku kreas ĝin aŭtomate. La modulo markas kelkajn aferojn per `is export`. `EXPORT` tenas ĉiujn el ili, ekzemple la subrutinon `hello`. Do eksportita nomo _ne_ estas rekte en la pakaĵo. Ĝi estas en `EXPORT`. Tio estas pli malgranda pakaĵo ene de la pakaĵo de la modulo. La ŝlosiloj ne venas en fiksita ordo. Do la ekzemplo ordigas ilin. Tiam la rezulto estas ĉiam la sama.

Vi ankaŭ povas trovi nomon en la pakaĵo. Uzu la nomon kiel ŝlosilon. Vi ricevas la saman valoron kiel per la plena nomo `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Listigo de la eksportaĵoj de modulo

La eksportitaj nomoj vere estas en la pakaĵo `EXPORT`, kiun vi vidis supre. Do vi povas listigi ilin. Simple rigardu unu nivelon pli profunde. Eksportaĵoj sen etikedo iras en la grupon `DEFAULT`. Vi povas legi pri etikedoj en [Eksportaj etikedoj](/eo/advanced/modules-basics/export-tags). La `.keys` de `DEFAULT` estas la eksportitaj rutinoj:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Ĉiu ŝlosilo estas eksportita nomo kun sia sigelo. Ĉi tie estas nur unu ŝlosilo: la subrutino `&hello`. La sigelo `&` montras, ke ĝi estas rutino. Do vi povas ekscii, kion modulo donas al siaj uzantoj. Vi ne bezonas legi ĝian fontkodon. Simple demandu al ĝia pakaĵo `EXPORT::DEFAULT`, kion ĝi havas.

Rigardi en pakaĵon tiel estas utile. Vi povas ekscii, kion modulo havas. Vi ankaŭ povas atingi ĝiajn nomojn, dum la programo ruliĝas. Tiam vi ne devas skribi ĉiun nomon en la kodo.

{% include nav.html %}
