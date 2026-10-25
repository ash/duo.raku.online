---
title: Reeksen
---

{% include menu.html %}

In Raku maakt een reeks een lijst van items. De items staan op volgorde, achter elkaar.

In het eenvoudigste geval is een reeks een lijst van gehele getallen. Elk getal is 1 meer dan het getal ervoor. Om een reeks te maken, gebruik je de operator `..` met twee waarden. De eerste waarde is de kleinste waarde van de reeks. De tweede waarde is de grootste waarde:

```raku
1 .. 5
```

Je hebt geen spaties rond de operator nodig. Dus je kunt dezelfde reeks ook zo schrijven:

```raku
1..5
```

Een reeks maakt een lijst. Maar de reeks zelf is één object. Dus je kunt hem in een scalaire variabele bewaren:

```raku
my $r = 1 .. 5;
```

## Niet alleen nummers

Je kunt ook reeksen maken van andere datatypes. Dat werkt als Raku weet hoe het de volgende waarde krijgt. Bijvoorbeeld:

```raku
my $letters = 'a' .. 'z';
```

In Raku hebben reeksen hun eigen datatype. De variabele `$r` heeft het type `Range`.

{% include nav.html %}
