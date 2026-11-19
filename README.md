# Clean Your TV Mobile (v0.1, Fases 1-2)

Estado honesto: el codigo NO se ha compilado ni probado todavia (el entorno donde se escribio no tiene Flutter ni Android SDK). Compilalo y reporta cualquier error.

## Que hay
- Flutter: 10 pantallas (Inicio, Descubrimiento, Seleccion, Guia, Diagnostico/Tareas/Progreso/Informe/Restauracion como pasos bloqueados, Historial).
- Kotlin: descubrimiento mDNS con NsdManager (`_adb-tls-connect`, `_adb-tls-pairing`, `_adb`, `_androidtvremote2`).
- SQLite: esquema de dispositivos, ejecuciones y cambios restaurables; el historial lista los TVs guardados.

## Que NO hay (a proposito)
- Motor ADB, diagnostico y optimizacion. Primero hay que comprobar en tu telefono y tu onn 4K que el descubrimiento y el emparejamiento ADB inalambrico funcionan.

## Compilar
Opcion A (sin instalar nada): sube esta carpeta a un repositorio de GitHub, pestana Actions > "Build APK" > Run workflow, descarga el artefacto `cyt-mobile-apk`.
Opcion B (local, con Flutter y Android SDK): `./tools/build.sh`.
Instala el APK en el telefono (permite "instalar apps desconocidas").

## Prueba de la Fase 2 (con el TV)
1. Telefono y TV en la misma Wi-Fi. En el TV activa Depuracion inalambrica.
2. Abre la app > Buscar televisores. Debe aparecer la IP del TV con la etiqueta "ADB inalambrico".
3. Si no aparece, desde un PC: `adb mdns services` para ver si el TV anuncia el servicio.
4. Anota el resultado.
