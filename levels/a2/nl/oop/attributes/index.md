---
title: Attributen
translations_gpt:
---

{% include menu.html %}

Een lege klasse is niet erg nuttig. Een object heeft eigen gegevens nodig. Daarvoor geef je de klasse _attributen_. Een attribuut is een stukje gegevens in een object. Voor een nieuw attribuut schrijf je het sleutelwoord `has` in de klasse:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Elk object krijgt een eigen kopie van deze attributen. Je geeft ze waarden als je het object maakt. Geef de waarden als benoemde argumenten mee aan `new`:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Kijk naar de `$.` in `has $.name`. Hij doet twee dingen. Ten eerste maakt hij een attribuut. Ten tweede maakt hij een methode met dezelfde naam. Deze methode geeft de waarde van het attribuut terug. Zo'n methode heet een _accessor_:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Verschillende objecten bewaren hun eigen waarden. Ze delen die niet:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

De volgende onderwerpen laten twee dingen zien. Eerst maak je attributen die je kunt veranderen. Dan geef je attributen standaardwaarden. Er is ook een manier om _private_ attributen te maken. Code buiten het object kan ze niet zien. Na de methoden komen we erop terug.

{% include nav.html %}
