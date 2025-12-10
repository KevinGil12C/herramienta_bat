# 🚀 Herramientas Rápidas de Diagnóstico - Batch Script

![Windows Batch](https://img.shields.io/badge/Windows-Batch-blue)
![Administrador requerido](https://img.shields.io/badge/Admin-Recommended-orange)
![Versión](https://img.shields.io/badge/Versión-2.0-green)

Script Batch todo-en-uno para diagnóstico y solución de problemas en Windows. Incluye **14 herramientas esenciales** con menú interactivo.

## ✨ Nuevas Funcionalidades (v2.0)

✅ **Renovación de IP DHCP** - Libera y renueva dirección IP automáticamente  
✅ **Limpieza de cache DNS** - Flush DNS completo + navegadores  
✅ **Submenús mejorados** - Más opciones y control

## 🛠️ Herramientas Completas

| # | Comando | Función |
|---|---------|---------|
| 1 | `ipconfig /all` | Información completa de red |
| 2 | `ping` | Prueba de conectividad |
| 3 | `netstat -an` | Conexiones y puertos |
| 4 | `sfc /scannow` | Verificador de archivos sistema |
| 5 | `chkdsk C: /scan` | Análisis de disco |
| 6 | `tasklist / taskkill` | Gestión de procesos |
| 7 | `systeminfo` | Información del sistema |
| 8 | `shutdown` | Apagado/Reinicio |
| 9 | `nslookup` | Diagnóstico DNS |
| 10 | `net use` | Recursos de red |
| 11 | **`ipconfig /release /renew`** | **Renovar IP DHCP** |
| 12 | **`ipconfig /flushdns`** | **Limpiar cache DNS** |
| 13 | **TODAS** | Ejecución rápida combinada |

## 🔧 Opciones de Red Avanzadas

### 🔄 Renovar IP (Opción 11)
```
1. Liberar y renovar IP (DHCP completo)
2. Solo liberar IP
3. Solo renovar IP  
4. Ver IP antes/después
```

### 🧹 Limpiar DNS (Opción 12)
```
1. Limpiar cache DNS completo
2. Registrar DNS de nuevo
3. Limpiar y registrar
4. Mostrar cache DNS actual
5. Limpiar cache de Chrome/Edge
```

## 🚀 Uso Rápido

```powershell
# Como administrador (recomendado)
Start-Process "diagnostico.bat" -Verb RunAs

# O navegar al menú principal:
1. Ejecutar .bat
2. Teclear número de opción (1-14)
3. Seguir instrucciones en pantalla
```

## 💡 Casos de Uso Comunes

### 🔧 Problemas de conexión a Internet:
```
1. Opción 12 → Limpiar DNS (1 o 3)
2. Opción 11 → Renovar IP (1)
3. Opción 2 → Probar conectividad
```

### 🖥️ Equipo lento o con errores:
```
1. Opción 6 → Ver/cerrar procesos
2. Opción 4 → SFC scannow
3. Opción 5 → CHKDSK
```

### 🌐 Problemas de red/dominios:
```
1. Opción 9 → NSLookup diagnóstico
2. Opción 12 → Flush DNS
3. Opción 3 → Ver conexiones activas
```

## ⚡ Características Técnicas

- **Zero-logs**: No genera archivos de registro
- **Auto-retorno**: Regresa al menú automáticamente
- **Validación**: Manejo de errores básico
- **UTF-8**: Soporte para caracteres especiales
- **Multi-nivel**: Submenús para funciones complejas

## 📦 Instalación en 2 Pasos

1. **Descargar:**
   ```bash
   git clone https://github.com/KevinGil12C/herramienta_bat.git
   ```

2. **Ejecutar como admin:**
   ```powershell
   # Botón derecho → "Ejecutar como administrador"
   # O desde línea de comandos:
   diagnostico.bat
   ```

## 🐛 Solución de Problemas Comunes

| Problema | Solución |
|----------|----------|
| "Acceso denegado" | Ejecutar como administrador |
| Script se cierra | Ejecutar desde CMD/PowerShell |
| SFC tarda mucho | Es normal (10-30 min) |
| No cambia IP | Reiniciar servicio DHCP o router |

## 🤝 Contribuir

¿Tienes una herramienta útil para añadir?
1. Fork el repositorio
2. Añade tu función en el menú
3. Mantén el formato consistente
4. Envía Pull Request

## 📄 Licencia

MIT License - Ver [LICENSE](LICENSE) para detalles.

## ⭐ Apoyo

Si te ayuda en tu trabajo, ¡dale una estrella! ⭐

---

**⚠️ Nota:** Siempre guarda tu trabajo antes de usar opciones de apagado o cerrar procesos.

*Última actualización: $(date +%Y-%m-%d)*
```

Estas nuevas opciones (11 y 12) son especialmente útiles para:
- **Renovar IP**: Soluciona problemas de conexión cuando el DHCP falla
- **Limpiar DNS**: Arregla problemas de resolución de nombres y dominios

¡Script completo y listo para usar! 🚀
