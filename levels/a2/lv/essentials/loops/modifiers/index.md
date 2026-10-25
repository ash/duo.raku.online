---
title: '`while` un `until` kā izteiksmes modifikatori'
---

{% include menu.html %}

Jūs varat likt `while` vai `until` arī aiz teikuma. Mēs to saucam par teikuma modifikatoru. Jūs to jau zināt [no `if` un `unless`](/lv/essentials/conditional-checks/modifiers).

Šeit ir piemērs. Tas atrod atlikumu, tas ir, to, kas paliek pāri pēc dalīšanas:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Šeit `-=` ir operators. Tas dara divas lietas. Tas atņem skaitli. Tas arī saglabā rezultātu mainīgajā. Tātad `$x -= 3` ir tas pats, kas `$x = $x - 3`.

`while` modifikators atkārto teikumu `$x -= 3`. Tas to atkārto, kamēr `$x > 2` ir `True`. Kad `$x > 2` ir `False`, cilpa apstājas.

Ja nosacījums sākumā ir `False`, teikums nekad neizpildās.

To pašu programmu jūs varat uzrakstīt ar `until`. Tad jums vajag pretēju nosacījumu:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
