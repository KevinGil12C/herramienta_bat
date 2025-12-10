# 🚀 Herramientas Rápidas de Diagnóstico - Batch Script

![Windows Batch](https://img.shields.io/badge/Windows-Batch-blue)
![Administrador requerido](https://img.shields.io/badge/Admin-Required-red)
![Versión](https://img.shields.io/badge/Versión-1.0-green)

Un script Batch para Windows que centraliza las herramientas de diagnóstico más comunes en un solo menú interactivo. Ideal para administradores de sistemas, soporte técnico y usuarios avanzados.

## 📋 Características

- **Menú interactivo** con navegación por números
- **Acceso rápido** a 10+ herramientas de diagnóstico
- **Sin archivos de log** - Ejecución directa en consola
- **Modo "todas"** para un diagnóstico rápido básico
- **Submenús contextuales** para operaciones complejas

## 🛠️ Herramientas Incluidas

| Número | Comando | Función |
|--------|---------|---------|
| 1 | `ipconfig /all` | Información completa de red |
| 2 | `ping` | Prueba de conectividad |
| 3 | `netstat -an` | Conexiones y puertos activos |
| 4 | `sfc /scannow` | Verificador de archivos del sistema |
| 5 | `chkdsk C: /scan` | Análisis de disco |
| 6 | `tasklist / taskkill` | Gestión de procesos |
| 7 | `systeminfo` | Información del sistema |
| 8 | `shutdown` | Apagado/Reinicio |
| 9 | `nslookup` | Diagnóstico DNS |
| 10 | `net use` | Recursos de red compartidos |
| 11 | **TODAS** | Ejecución rápida de herramientas básicas |

## 📥 Instalación

1. **Clonar o descargar:**
   ```bash
   git clone https://github.com/KevinGil12C/herramienta_bat.git
   ```

2. **O descargar manualmente:**
   - Haz clic en `diagnostico.bat`
   - "Guardar como" → `diagnostico.bat`

3. **Ubicación:**
   - Puedes colocar el archivo en cualquier carpeta
   - Recomendado: `C:\Herramientas\` o en el escritorio

## 🚀 Uso

### Ejecución Normal
```bash
# Doble clic en el archivo .bat
# O desde cmd/powershell:
diagnostico.bat
```

### Ejecución como Administrador (Recomendado)
```powershell
# Botón derecho → "Ejecutar como administrador"
# O desde PowerShell:
Start-Process "diagnostico.bat" -Verb RunAs
```

### Ejemplo de Flujo
```
1. Ejecuta diagnostico.bat como administrador
2. Selecciona opción "6" para gestión de procesos
3. Dentro del submenú, elige "1" para listar procesos
4. Presiona cualquier tecla para volver al menú
```

## ⚠️ Permisos Requeridos

Algunas funciones necesitan privilegios de administrador:

| Función | Admin Requerido | Razón |
|---------|----------------|-------|
| `sfc /scannow` | ✅ Sí | Modifica archivos del sistema |
| `chkdsk` | ✅ Sí | Acceso a disco a bajo nivel |
| `shutdown` | ✅ Sí | Control del sistema |
| `taskkill` | ⚠️ A veces | Para procesos del sistema |
| Otras herramientas | ❌ No | Solo lectura |

## 🔧 Personalización

### Variables Editables (dentro del script):
```batch
set "ping_target=google.com"       # Cambiar servidor de prueba
set "shared_folder=\\SERVIDOR\..." # Ruta predeterminada recursos
set "drive_letter=Z:"              # Unidad para mapear
```

### Añadir Nuevas Herramientas:
```batch
# Agregar en la sección de menú:
echo 13. Nueva Herramienta

# Agregar condición:
if "%opcion%"=="13" goto nueva_herramienta

# Crear nueva etiqueta:
:nueva_herramienta
cls
echo ========== NUEVA HERRAMIENTA ==========
# Tu comando aquí
pause
goto menu
```

## 🐛 Solución de Problemas

### Problema: "El acceso ha sido denegado"
**Solución:** Ejecutar como administrador

### Problema: Comandos no reconocidos
**Solución:** Verificar que estás en Windows y cmd.exe

### Problema: SFC tarda mucho
**Solución:** Es normal, puede tomar 10-30 minutos

### Problema: Script se cierra inmediatamente
**Solución:** Ejecutar desde cmd o agregar `pause` al final

## 📝 Notas Importantes

1. **SFC /scannow** puede requerir el DVD de Windows para reparar
2. **CHKDSK** necesita acceso exclusivo al disco
3. **Taskkill** puede causar pérdida de datos si mata procesos críticos
4. El script no modifica archivos excepto cuando ejecutas SFC/CHKDSK
5. Siempre guarda tu trabajo antes de usar opciones de apagado

## 🤝 Contribuir

1. Haz fork del proyecto
2. Crea tu rama: `git checkout -b nueva-funcionalidad`
3. Commit cambios: `git commit -m 'Agrega X funcionalidad'`
4. Push a la rama: `git push origin nueva-funcionalidad`
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver archivo `LICENSE` para más detalles.

## ⭐ Mostrar tu apoyo

Si te resultó útil, ¡dale una estrella al repositorio!

## 👨‍💻 Autor

**Dev Kevscl**
- GitHub: [@tuusuario](https://github.com/KevinGil12C)


---

**⚠️ Descargo de responsabilidad:** Este script es para fines educativos y de diagnóstico. El autor no se hace responsable por daños en el sistema. Usa bajo tu propio riesgo.

---

*Última actualización: $(date +%Y-%m-%d)*
