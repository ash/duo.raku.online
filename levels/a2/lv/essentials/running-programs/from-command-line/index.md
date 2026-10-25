---
title: Palaišana no komandrindas
---

{% include menu.html %}

Saglabājiet programmu teksta failā, piemēram, `hello.raku`. Tad dodiet faila ceļu komandrindas rīkam `raku`. Šeit dolāra simbols ir čaulas uzvedne:

```console
$ raku hello.raku
```

Ja programmā nav kļūdu, tā uzreiz izpildās. Ja tā kaut ko izdrukā, jūs redzat rezultātu terminālī:

```console
$ raku hello.raku 
Hello, World!
```

Unix bāzētās sistēmās jūs varat pievienot shebang. Tā ir īpaša pirmā rinda. Jūs varat arī padarīt failu izpildāmu:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Šeit ir nākamie soļi:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
