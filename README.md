programa-creacion_videotutoriales_ubuntu
========================================
Presentación basada en reveal.js que explica brevemente como hacer un videotutorial a través de herramientas de Ubuntu.  Al mismo tiempo, esta presentación será utilizada por la comunidad Vitalinux para crear un videotutorial que explique como crear videotutoriales, de tal forma que toda la comunidad pueda contribuir en la creación de videotutoriales explicativos del software que incluye el proyecto Migasfree+Vitalinux.

Elementos Necesarios para hacer un Videotutorial
------------------------------------------------

1. **SimpleScreenRecorder**. Tras probar varios de ellos, de entre todos los programas pensados
exclusivamente para grabar el escritorio de trabajo, se ha seleccionado este por sus características y
buenos resultados. No esta disponible en los repositorios por defecto, por lo que es necesario
agregar un nuevo repositorio:

```bash
[usuario@linux]$ sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
[usuario@linux]$ sudo apt-get update
[usuario@linux]$ sudo apt-get install simplescreenrecorder ubuntu-restricted-extras
[usuario@linux]$ simplescreenrecorder
```
2. **Mplayer**. Me permite mostrar en los videotutoriales una pequeña ventana (sin barras de título,
menús, etc.) con la imagen capturada por la Webcam. De esta forma, al mismo tiempo que se ve
como realizar la práctica, se me muestra a mí mientras lo explico. Esta disponible en los
repositorios por defecto.

```bash
[usuario@linux]$ sudo apt-get install mplayer
[usuario@linux]$ mplayer -noborder -quiet -ontop -fps 15 -geometry 200x150+1110+560
```

3. **OpenShot**. Me permite editar los vídeos resultantes. Es decir, dispone de varias pistas o capas,
en las cuales pudemos ir añadiendo vídeos, música o imágenes que irán componiendo el vídeo
resultante. Esta disponible en los repositorios por defecto.

```bash
[usuario@linux]$ sudo apt-get install openshot
[usuario@linux]$ openshot
```



