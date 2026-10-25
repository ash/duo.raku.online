---
title: Palaišana no komandrindas
---

{% include menu.html %}

Saglabājiet programmas tekstu teksta failā, piemēram, `hello.raku`. Tad nododiet tā ceļu komandrindas rīkam `raku`. Dolāra simbols parāda čaulas uzvedni:

```console
$ raku hello.raku
```

Ja programmā nav kļūdu, tā tūlīt izpildās. Ja ir kāda izvade, jūs to redzēsiet terminālī:

```console
$ raku hello.raku 
Hello, World!
```

Unix bāzētās sistēmās varat pievienot shebang un padarīt failu izpildāmu:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Nākamie soļi ir šādi:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
