---
title: Metožu pievienošana izpildes laikā
translations_gpt:
---

{% include menu.html %}

MOP jūs varat izmantot ne tikai tipa izpētei. Tas var arī **mainīt** tipu, kamēr programma darbojas. Metametode `.^add_method` pievieno klasei jaunu metodi:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

Klasei `Empty` nav nevienas metodes. Tad `Empty.^add_method('greet', …)` pievieno metodi ar nosaukumu `greet`, kas dota kā anonīma `method { … }`. No šī brīža katrs `Empty` objekts reaģē uz `.greet`. Tas strādā gluži tā, it kā jūs būtu to uzrakstījuši klasē.

Šī ir īsta metaprogrammēšana. Mēs liekam `Empty` metaobjektam izaudzēt jaunu metodi. Tas pats protokols ir aiz iespējām, ko jūs jau esat izmantojuši. Principā tas darbojas šādi. Kad jūs rakstāt `class`, `role`, `has` vai `method`, kompilators jūsu vietā uzbūvē jūsu tipu. Tas to dara ar MOP metodēm, piemēram, `.^add_method` un `.^add_attribute`.

Mēs sakām «principā», jo tas ir valodas modelis. Tas nav solījums par kādu vienu kompilatoru. Objektu sistēma ir *definēta* ar MOP palīdzību. Bet vai konkrēta implementācija tiešām sūta katru deklarāciju caur šīm metametodēm? Un vai jūs varat redzēt, ka tā to dara? Tas ir katras implementācijas ziņā. Tā paša iemesla dēļ šo metametožu *izsaukšana* jūsu kodā ir atkarīga no implementācijas. Kompilatori var piedāvāt dažādas metametodes, un to precīzā uzvedība var atšķirties. Tāpēc kods ar `.^add_method` un līdzīgām metodēm var strādāt atšķirīgi katrā Raku.

Metožu pievienošana izpildes laikā ir spēcīgs rīks, bet jums tas būs vajadzīgs reti. Vairums programmu to nekad nelieto. Bet tieši tas padara Raku objektu sistēmu atvērtu. Klašu likumi paši ir uzrakstīti ar MOP, tāpēc jūs varat tos paplašināt. Ikdienas kodā tā MOP daļa, ko jūs tiešām lietosiet, ir izpēte. Šīs metametodes jūs redzējāt iepriekšējā tematā.

{% include nav.html %}
