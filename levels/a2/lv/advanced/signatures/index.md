---
title: Paraksti
translations_gpt:
---

{% include menu.html %}

Pamatu daļā jūs [rakstījāt apakšprogrammas](/lv/essentials/functions). Tām bija pozicionālie un nosauktie parametri. Parametriem bija noklusējuma vērtības. Parametru saraksts ir _signatūra_. Šī sadaļa parāda vēl divas lietas, ko signatūra var darīt. Tā var padarīt parametru neobligātu. Un tā var savākt jebkuru skaitu papildu argumentu.

## Neobligatie parametri

Parametrs ar jautājuma zīmi aiz tā ir _neobligāts_. Izsaucējs var to izlaist. Tad parametrs ir nedefinēts. Tāpēc jūs varat dot vērtību, ko izmantot tā vietā. Šim nolūkam izmantojiet definēts-vai operatoru `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Šeit mēs izsaucam `greet` ar vienu argumentu. Tad `$greeting` ir nedefinēts. Tāpēc `//` tā vietā dod `'Hello'`.

## Uzsucosie parametri

Parametrs ar `*` ir _uzsūcošs_ (slurpy). Tas paņem visus argumentus, kas ir palikuši. Uzsūcošu masīvu raksta ar `*@`. Tas savāc jebkuru skaitu pozicionālo argumentu masīvā:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Jūs varat lietot parastus parametrus kopā ar uzsūcošu. Vispirms fiksētie parametri saņem savas vērtības. Viss pārējais nonāk uzsūcošajā masīvā:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Uzsūcošs hešs darbojas tāpat. To raksta ar `*%`. Tas savāc visus papildu nosauktos argumentus hešā:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Abi nosauktie argumenti kļūst par `%options` atslēgām. Tāpēc programma izdrukā:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
