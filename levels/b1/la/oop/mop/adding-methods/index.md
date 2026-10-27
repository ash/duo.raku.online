---
title: Methodos dum exsecutione addere
translations_gpt:
---

{% include menu.html %}

MOP non solum ad genus inspiciendum adhibere potes. Etiam genus **mutare** potest dum programma currit. Metamethodus `.^add_method` novam methodum classi addit:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

Classis `Empty` nullas omnino methodos habet. Deinde `Empty.^add_method('greet', …)` methodum nomine `greet` addit, quae ut anonyma `method { … }` datur. Ex eo tempore omne obiectum `Empty` ad `.greet` respondet. Ita operatur ac si eam in classe scripsisses.

Haec est vera metaprogrammatio. Metaobiectum classis `Empty` novam methodum producere iubemus. Idem protocollum post facultates stat quas iam adhibuisti. In theoria, sic operatur. Cum `class`, `role`, `has` vel `method` scribis, compilator genus tuum pro te aedificat. Hoc facit per methodos MOP sicut `.^add_method` et `.^add_attribute`.

Dicimus «in theoria» quia hoc exemplar linguae est. Non est promissum de ullo uno compilatore. Systema obiectorum terminis MOP *definitur*. Sed mittitne data implementatio revera omnem declarationem per illas metamethodos? Et potesne videre eam hoc facere? Id a quaque implementatione pendet. Eadem de causa, has metamethodos ipse *vocare* ab implementatione pendet. Compilatores diversas metamethodos praebere possunt, et earum agendi ratio exacta differre potest. Itaque codex cum `.^add_method` et similibus methodis in quoque Raku aliter operari potest.

Methodos tempore exsecutionis addere instrumentum potens est, sed raro eo egebis. Pleraque programmata eo numquam utuntur. Sed id est quod systema obiectorum Raku apertum facit. Ipsae regulae classium cum MOP scriptae sunt, itaque eas extendere potes. In codice cotidiano, portio MOP qua revera uteris est inspectio. Has metamethodos in argumento superiore vidisti.

{% include nav.html %}
