---
title: Ejecutar desde la línea de comandos
---

{% include menu.html %}

Guarda el texto del programa en un archivo de texto, por ejemplo, `hello.raku`. Después, pasa su ruta a la herramienta de línea de comandos `raku`. El carácter de dólar indica el prompt del shell:

```console
$ raku hello.raku
```

Si el programa no tiene errores, se ejecuta inmediatamente. Si hay alguna salida, la verás en la terminal:

```console
$ raku hello.raku 
Hello, World!
```

En sistemas basados en Unix, puedes agregar un shebang y hacer el archivo ejecutable:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Los siguientes pasos son los siguientes:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
