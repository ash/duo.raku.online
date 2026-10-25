---
title: La kompililo Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

**Raku++** estas dua kompililo de Raku. Ĝia programdosiero nomiĝas `rakupp`. La unua versio aperis en julio 2026. Rakudo rulas sur la virtuala maŝino MoarVM. Raku++ estas malsama. Ĝia aŭtoro verkis ĝin en **C++**. Ĝi ne bezonas propran virtualan maŝinon.

Ĝi estas samtempe **interpretilo** kaj **kompililo**. Ĝi povas ruli programon rekte. Ĝi ankaŭ povas ŝanĝi programon en maŝinan kodon. Tio faras ĝin pli rapida. Ĝi ne bezonas unue starti grandan rultempan sistemon. Do `rakupp` startas en nur kelkaj milisekundoj. Tio faras ĝin agrabla por mallongaj skriptoj. Ĝi estas ankaŭ agrabla por ĉiutaga laboro en la komandlinio. Ĝia aŭtoro nomas ĝin la plej rapida kompililo de Raku.

Defaŭlte, Raku++ subtenas Raku 6.d. Ĝi ankaŭ subtenas 6.e. Programo petas 6.e per `use v6.e.PREVIEW`. Versio 5.4.1 aperis en oktobro 2026. Ĝi trapasas ĉiujn 1425 testodosierojn de Roast. Roast estas la oficiala aro de testoj de Raku.

Raku++ ankaŭ rulas en retumilo. Por tio, oni kompilas ĝin al WebAssembly. La provejo ĉe [raku.online](https://raku.online) funkcias per ĝi. Tie vi povas provi Raku sen instali ion ajn.

## Reĝimoj de interpretilo kaj kompililo

Rulu programon rekte, kiel per Rakudo:

```console
$ rakupp hello.raku
```

Aŭ petu al Raku++ fari maŝinkodan programdosieron. Ĝi rulas memstare. Kaj ĝi estas eĉ pli rapida:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Por ĉiutaga lernado, vi bezonas nur la simplan interpretilan reĝimon. La kompilaj reĝimoj estas por plia rapideco.

## Fontkodo

Raku++ estas malfermitkoda. Vi povas trovi ĝin ĉe [github.com/ash/rakupp](https://github.com/ash/rakupp). La paĝo ankaŭ havas eldonajn dosierojn kaj instrukciojn por konstrui ĝin.

{% include nav.html %}
