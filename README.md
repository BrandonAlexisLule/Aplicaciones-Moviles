# Aplicaciones Móviles

En este repositorio se subirán todos los proyectos en flutter de la materia Desarrollo de Aplicaciones Móviles Híbridas del semestre Enero-Junio 2025

## Subir cambios a Github

1. INICIALIZA repositorio con ```git init```. En cada paso PRESIONA la tecla ENTER después de poner algún comando para que se guarden los cambios y se pueda continuar.
2. REVISA con ```git status``` que aún no tenemos nada subido, las letras en color rojo indican que son los archivos que aún no se han subido.
3. AGREGA los archivos que vamos a subir a nuestro repositorio remoto con ```git add .``` o también se puede subir por achivo, por ejemplo ```git add <file_name>```.
4. VUELVE a revisar cambios con ```git status``` y ahora se deben de ver de color verde los archivos agregados.
5. HAZ un commit con el comando ```git commit -m 'Tu mensaje personalizado aquí'``` que es el mensaje que va con los archivos que se van a subir al repositorio. 
6. En caso de que no tengas ningún correo asociado
   - DEBES ejecutar el siguiente comando ```git config --global user.mail <your-email@example.com>```. En **```<your-email@example.com>```** Debes colocar tu correo del   instituto o personal sin el ```<``` ni ```>```.
   - Posteriormente, ejecuta el comando ```git config --global user.name <nombre-en-github>``` y en **```<nombre-en-github>```** va el nombre que tienes registrado en Github sin el ```<``` ni ```>```..
7. Luego, escribe ```git branch -M main``` para que se suba en la rama principal tu proyecto.
8. Posteriormente escribe ```git remote add origin <url>``` e ingresamos la url del repositorio a donde se van a alojar los archivos.
9. Ahora EJECUTA el comando ```git push -u origin main``` para alojar los archivos al repositorioe en Github.
10. Revisa el repositorio en la página y verifica los archivos subidos.

### Pasos breves sin explicación
```
1. git init
2. git status
3. git add . o git add <file_name>
4. git commit -m 'Tu mensaje personalizado aquí'
5. git config --global user.mail <your-email@example.com>
6. git config --global user.name <nombre-en-github>
7. git branch -M main
8. git remote add origin <url>
9. git push -u origin main
```
## Errores que pueden ocurrir al querer subir tus archivos.
```
To https://github.com/nombre_usuario/nombre_repositorio.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'https://github.com/nombre_usuario/nombre_repositorio.git'
hint: Updates were rejected because the remote contains work that you do not
hint: have locally. This is usually caused by another repository pushing to
hint: the same ref. If you want to integrate the remote changes, use
hint: 'git pull' before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```
### Para corregirlos, debes hacer lo siguiente:
* ```git fetch origin main:tmp```
* ```git rebase tmp```
* ```git push -u origin main```<br>
Al ejecutar los comandos anteriores, UNO POR UNO, debe solucionarse el error y al hacer el **push** (comando anterior) te debe de cargar el siguiente mensaje:
```
Enumerating objects: 47, done.
Counting objects: 100% (47/47), done.
Delta compression using up to 12 threads
Compressing objects: 100% (42/42), done.
Writing objects: 100% (46/46), 22.24 KiB | 2.22 MiB/s, done.
Total 46 (delta 9), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (9/9), done.
To https://github.com/nombre_usuario/nombre_repositorio.git
   6011bba..211e63f  main -> main
branch 'main' set up to track 'origin/main'.
```


