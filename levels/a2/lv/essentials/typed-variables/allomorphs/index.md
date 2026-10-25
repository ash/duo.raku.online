---
title: Allomorfi
---

{% include menu.html %}

Apskatiet šo programmu. Vēl to nepalaidiet. Vai jūs varat pateikt, kuras ievades vērtības to salauž? Un kurā rindā?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Programma izveido trīs skalāros mainīgos. Divi no tiem, `$i` un `$s`, ir tipizēti mainīgie. Tātad `$i` var glabāt tikai veselus skaitļus. Un `$s` var glabāt tikai virknes.

`prompt` atgriež vērtību. Tās tips ir atkarīgs no rakstzīmēm, ko mēs ievadām. Dažreiz ievades virkne var būt vesels skaitlis. Tad rezultātam ir tips `IntStr`. Šis tips ir _gan_ `Int`, gan `Str`. Tātad jūs varat to piešķirt `Int` mainīgajam. Jūs varat to piešķirt arī `Str` mainīgajam. Piemēram, jūs ievadāt `1234`. Tad programma nesalūst.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

`IntStr` tips ir _allomorfa_ piemērs. Allomorfs ir datu tips, kas sastāv no diviem citiem tipiem. Šeit ir vēl daži piemēri.

Tagad ievadiet virkni, kas nevar būt vesels skaitlis. Programma salūst. Tas notiek, kad mēs piešķiram `$input` mainīgajam `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Dažreiz ievades virkne ir skaitlis, bet ne vesels skaitlis. Ievērojiet, ka arī tad jūs saņemat kļūdu. Vesela skaitļa konteiners nevar glabāt peldošā punkta skaitli. Tas nevar glabāt arī racionālu skaitli. Tāpēc jūs saņemat izņēmumu:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Otrā piešķiršana, `$s = $input`, nekad nesalūst. Virkne var pieņemt jebkuru ievadi.

🦋 Jūs varat atrast šīs programmas avota kodu failā [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
