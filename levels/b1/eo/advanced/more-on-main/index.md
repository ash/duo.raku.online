---
title: Pli pri MAIN-subrutino
translations_gpt:
---

{% include menu.html %}

En la parto Esencaĵoj, vi uzis `MAIN` [por ricevi komandliniajn argumentojn](/eo/essentials/the-main-function/reading-command-line-arguments). Sed Raku faras pli por vi kun `MAIN` ol nur transdoni la valorojn.

## La uzad-mesaĝo

Kelkfoje la komandliniaj argumentoj ne kongruas kun la signaturo de `MAIN`. En tiu kazo, Raku ne rulas la korpon. Anstataŭe, ĝi presas _uzad-mesaĝon_, kiun Raku kreas aŭtomate. La mesaĝo klarigas, kiel voki la programon.

Ekrigardu ĉi tiun programon:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Se vi vokas ĝin ĝuste, ĝi salutas la personon:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Se vi vokas ĝin sen argumento, la signaturo ne kongruas. Do Raku presas la uzad-mesaĝon anstataŭ la saluton:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku konstruas la mesaĝon el la nomoj de la parametroj. Do donu al ili klarajn nomojn, kaj vi ricevas utilan helptekston senpage.

## Nomitaj argumentoj

La parametroj de `MAIN` povas esti nomitaj, same kiel poziciaj. Nomita parametro fariĝas komandlinia opcio kiel `--option=value`. Se ĝi havas defaŭltan valoron, la opcio ne estas deviga:

```raku
sub MAIN(:$name = 'World') {
    say "Hello, $name!";
}
```

```console
$ raku hello.raku
Hello, World!

$ raku hello.raku --name=Raku
Hello, Raku!
```

{% include nav.html %}
