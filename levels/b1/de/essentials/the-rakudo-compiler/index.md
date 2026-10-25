---
title: Der Rakudo-Compiler
translations_gpt:
---

{% include menu.html %}

**Rakudo** ist die Referenzimplementierung von Raku: der wichtigste Standard-Compiler. Dieser Kurs verwendet ihn. Heute ist er der vollständigste Weg, Raku auszuführen. Er ist auch in der Praxis gut erprobt. Wenn Leute also „den Raku-Compiler“ sagen, meinen sie meistens Rakudo.

Rakudo selbst ist größtenteils in Raku geschrieben. Eine kleinere Sprache, NQP („Not Quite Perl“), hilft dabei, ihn zu bauen. Ihr Programm wird in Bytecode übersetzt und läuft auf einer virtuellen Maschine namens **MoarVM**. MoarVM bekommen Sie automatisch, wenn Sie Rakudo installieren. Rakudo will die ganze Sprache abdecken. Deshalb ist er die sicherste Wahl, wenn jeder Teil von Raku funktionieren muss.

Rakudo unterstützt Raku 6.d. Neue Veröffentlichungen erscheinen oft, sodass Korrekturen und neue Funktionen Sie schnell erreichen.

## Die virtuelle Maschine

Standardmäßig läuft Rakudo auf MoarVM, einer virtuellen Maschine, die speziell für Raku gemacht ist. Der Entwurf bindet Rakudo nicht an eine einzige Maschine. Rakudo kann auch auf anderen virtuellen Maschinen aufgebaut werden. Aber MoarVM ist die übliche, gut unterstützte Wahl. Dieser Kurs geht davon aus, dass Sie sie verwenden. Das ist der wichtigste Unterschied zu [Raku++](/de/essentials/the-rakupp-compiler). Raku++ ist in C++ geschrieben und braucht keine eigene virtuelle Maschine.

## Quellcode und Links

Rakudo ist quelloffen, und jeder kann seine Entwicklung verfolgen:

* [rakudo.org](https://rakudo.org)
* [Rakudo auf GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
