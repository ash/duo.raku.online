---
title: Allomorfi
---

{% include menu.html %}

Apskatiet šādu programmu. Pirms to palaižat, mēģiniet uzminēt. Kuras ievades vērtības to salauztu, un kurā rindā?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Programma šeit izveido trīs skalāros mainīgos. Divi no tiem, `$i` un `$s`, ir tipizēti mainīgie. Tas nozīmē, ka `$i` var glabāt tikai veselus skaitļus, un `$s` var glabāt tikai virknes.

Tips, ko atgriež `prompt`, ir atkarīgs no rakstzīmēm, ko mēs ievadījām. Ja ievades virkne var būt vesels skaitlis, rezultātam ir `IntStr` tips. Šis tips ir _gan_ `Int`, gan `Str`. Tātad jūs varat to piešķirt `Int` mainīgajam vai `Str` mainīgajam. Piemēram, ja jūs ievadāt `1234`, programma nesalūst.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

`IntStr` tips ir tā saucamā _allomorfa_ piemērs. Tas ir datu tips, kas apvieno divus citus tipus. Šeit ir vēl daži piemēri.

Ja jūs ievadāt virkni, kas nevar būt vesels skaitlis, programma salūst. Tas notiek brīdī, kad mēs piešķiram `$input` mainīgajam `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Ievērojiet, ka jūs saņemat kļūdu arī tad, ja skaitlis nav vesels. Vesela skaitļa konteiners nevar glabāt peldošā punkta vai racionālu skaitli. Tāpēc Raku izmet izņēmumu:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Otrā piešķiršana, `$s = $input`, nekad nesalūzīs, jo virkne var pieņemt jebkuru ievadi.

🦋 Jūs varat atrast šīs programmas avota kodu failā [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
