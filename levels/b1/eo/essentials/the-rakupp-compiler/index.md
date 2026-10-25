---
title: La kompililo Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

**Raku++** estas dua kompililo de Raku. Ĝia rulebla dosiero nomiĝas `rakupp`, kaj ĝi unue aperis en julio 2026. Rakudo rulas sur la virtuala maŝino MoarVM. Raku++, aliflanke, estas skribita en **C++**. Ĝi bezonas neniun propran virtualan maŝinon.

Ĝi estas kaj **interpretilo** kaj **kompililo**. Ĝi povas ruli programon rekte. Aŭ ĝi povas traduki ĝin al maŝina kodo por plia rapideco. Ne estas peza rultempo por startigi. Do `rakupp` ekfunkcias en nur kelkaj milisekundoj. Tio faras ĝin agrabla por mallongaj skriptoj kaj ĉiutaga laboro en la terminalo. Ĝia aŭtoro nomas ĝin la plej rapida kompililo de Raku.

Defaŭlte, Raku++ subtenas Raku 6.d. Ĝi subtenas 6.e, kiam programo petas tion per `use v6.e.PREVIEW`. Versio 5.4.1 aperis en oktobro 2026. Ĝi trapasas ĉiujn 1425 testodosierojn de la testaro Roast. Roast estas la oficiala aro de testoj de Raku.

Raku++ ankaŭ rulas en retumilo. Ĝi estas kompilita al WebAssembly kaj funkciigas la provejon ĉe [raku.online](https://raku.online). Tie vi povas provi Raku sen instali ion ajn.

## Reĝimoj de interpretilo kaj kompililo

Vi povas tuj ruli programon, same kiel per Rakudo:

```console
$ rakupp hello.raku
```

Aŭ petu al Raku++ fari apartan maŝinkodan ruleblan dosieron el programo. Ĝi rulas eĉ pli rapide:

```console
$ rakupp --exe hello.raku -o hello
$ ./hello
```

Por ĉiutaga lernado, la simpla interpretila reĝimo estas ĉio, kion vi bezonas. La kompilaj reĝimoj estas tie por kiam vi volas plian rapidecon.

## Fontkodo

Raku++ estas malfermitkoda. Vi povas trovi ĝin ĉe [github.com/ash/rakupp](https://github.com/ash/rakupp). Pretaj eldonaj dosieroj kaj konstruinstrukcioj ankaŭ estas tie.

{% include nav.html %}
