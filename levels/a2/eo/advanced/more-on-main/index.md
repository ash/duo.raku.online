---
title: Pli pri MAIN-subrutino
translations_gpt:
---

{% include menu.html %}

En la parto Esencaĵoj, vi uzis `MAIN` [por ricevi komandliniajn argumentojn](/eo/essentials/the-main-function/reading-command-line-arguments). Raku faras pli por vi kun `MAIN`. Ĝi ne nur transdonas la valorojn.

## La uzad-mesaĝo

Kelkfoje la komandliniaj argumentoj ne kongruas kun la signaturo de `MAIN`. La signaturo estas ĝia listo de parametroj. Tiam Raku ne rulas la korpon. Anstataŭe ĝi presas _uzad-mesaĝon_. Raku mem kreas ĉi tiun mesaĝon. La mesaĝo montras, kiel ruli la programon.

Rigardu ĉi tiun programon:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Rulu ĝin ĝuste. Tiam ĝi salutas la personon:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Nun rulu ĝin sen argumento. La signaturo ne kongruas. Do Raku presas la uzad-mesaĝon. Ĝi ne salutas:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku faras la mesaĝon el la nomoj de la parametroj. Do donu al la parametroj bonajn nomojn. Tiam la helpteksto estas utila, kaj vi faras neniun kroman laboron.

## Nomitaj argumentoj

`MAIN` povas havi poziciajn parametrojn. Ĝi povas havi ankaŭ nomitajn parametrojn. En la komandlinio, nomita parametro fariĝas opcio kiel `--option=value`. Vi povas doni al ĝi defaŭltan valoron. Tiam la opcio ne estas deviga:

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
