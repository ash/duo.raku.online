---
title: Metožu pievienošana izpildes laikā
translations_gpt:
---

{% include menu.html %}

MOP nav tikai tam, lai ieskatītos tipos. Tas var arī **mainīt** tipu, kamēr programma darbojas. Metametode `.^add_method` pievieno klasei jaunu metodi:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

Klasei `Empty` nav nevienas metodes. Tad `Empty.^add_method('greet', …)` pievieno tai metodi. Tās nosaukums ir `greet`. Pati metode ir anonīma `method { … }`. Anonīma nozīmē, ka tai nav nosaukuma. Pēc tam jūs varat izsaukt `.greet` uz katra `Empty` objekta. Tas strādā tā, it kā jūs būtu uzrakstījuši metodi klasē.

Šī ir īsta metaprogrammēšana. Metaprogrammēšana nozīmē kodu, kas strādā ar kodu. Šeit mēs liekam `Empty` metaobjektam izaudzēt jaunu metodi. Tas pats protokols ir aiz lietām, ko jūs jau izmantojat. Ideja ir šāda. Jūs rakstāt `class`, `role`, `has` vai `method`. Tad kompilators jūsu vietā uzbūvē jūsu tipu. Tas lieto MOP metodes, piemēram, `.^add_method` un `.^add_attribute`.

Mēs sakām «ideja», un tam ir iemesls. Tas ir valodas modelis. Tas nav solījums par kādu vienu kompilatoru. Objektu sistēma ir *definēta* caur MOP. Implementācija ir Raku kompilators. Vai tā tiešām sūta katru deklarāciju caur šīm metametodēm? Un vai jūs to varat redzēt? Katra implementācija to izlemj pati. Jūs varat arī paši *izsaukt* šīs metametodes. Tā paša iemesla dēļ rezultāts ir atkarīgs no implementācijas. Kompilatori var dot jums dažādas metametodes. Šīs metodes var arī strādāt dažādi. Kods var lietot `.^add_method` un līdzīgas metodes. Šāds kods var nestrādāt vienādi katrā Raku.

Jūs varat pievienot metodes, kamēr programma darbojas. Tas ir spēcīgs rīks. Bet jums to vajag reti. Vairums programmu to nekad nelieto. Bet tas padara Raku objektu sistēmu atvērtu. Arī klašu likumi ir uzrakstīti ar MOP. Tāpēc jūs varat šiem likumiem kaut ko pievienot. Ikdienas kodam jums vajag citu MOP daļu. Jūs to redzējāt iepriekšējā tematā. Tās ir metametodes, kas ieskatās tipu iekšā.

{% include nav.html %}
