---
title: Methodos dum exsecutione addere
translations_gpt:
---

{% include menu.html %}

MOP non solum genera intus inspicit. Etiam genus **mutare** potest dum programma currit. Metamethodus `.^add_method` novam methodum classi addit:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

Classis `Empty` nullas omnino methodos habet. Deinde `Empty.^add_method('greet', …)` ei methodum addit. Nomen eius est `greet`. Ipsa methodus est anonyma `method { … }`. Anonyma significat: nomen non habet. Postea `.greet` in omni obiecto `Empty` vocare potes. Operatur sicut methodus in classe scripta.

Haec est vera metaprogrammatio. Metaprogrammatio est codex qui cum codice operatur. Hic metaobiectum classis `Empty` novam methodum facere iubemus. Idem protocollum post res stat quas iam adhibes. Ecce idea. Scribis `class`, `role`, `has` vel `method`. Tum compilator genus tuum pro te aedificat. Methodis MOP utitur, sicut `.^add_method` et `.^add_attribute`.

Non sine causa «ideam» dicimus. Hoc est exemplar linguae. Non est promissum de uno compilatore. Systema obiectorum per MOP *definitur*. Implementatio est compilator pro Raku. Mittitne revera omnem declarationem per has metamethodos? Et potesne hoc videre? Quaeque implementatio hoc ipsa decernit. Has metamethodos etiam ipse *vocare* potes. Eadem de causa, effectus ab implementatione pendet. Compilatores tibi diversas metamethodos dare possunt. Hae methodi etiam diversis modis operari possunt. Codex `.^add_method` et similes methodos adhibere potest. Talis codex fortasse non in omni Raku eodem modo currit.

Methodos addere potes dum programma currit. Hoc est instrumentum potens. Sed raro eo eges. Pleraque programmata eo numquam utuntur. Sed systema obiectorum Raku apertum facit. Etiam regulae classium cum MOP scriptae sunt. Itaque has regulas augere potes. Pro codice cotidiano, aliam portionem MOP requiris. Eam in argumento superiore vidisti. Hae sunt metamethodi quae intra genera inspiciunt.

{% include nav.html %}
