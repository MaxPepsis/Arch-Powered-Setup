pacman -Sy --noconfirm figlet > /dev/null 2>&1

menu_principal() {
    echo
    figlet "MaxPepsis Software"
    echo
    echo "============== Menú de instalación =============="
    echo " 1) Locales"
    echo " 2) Espejos y repositorios"
    echo " 3) Partición de Disco                   +"
    echo " 4) Bootloader                           +"
    echo " 5) Nombre de Equipo (Hostname)          +"
    echo " 6) Contraseña de Administrador"
    echo " 7) Nombre de Usuario"
    echo " 8) Audio"
    echo " 9) Kernels                              +"
    echo "10) Configuración de Internet"
    echo "11) Additional packages"
    echo "12) Zona Horaria                         +"
    echo "13) Sincronización automática (NTP)      +"
    echo
    echo " i) Instalar"
    echo " q) Cancelar"
    echo "==============================================="
}

mostrar_menu() {
    while true; do
        menu_principal
        read -p $'\nSelecciona una opción: ' opcion
        case $opcion in
            1|"Locales") echo "Locales no implementado aún." ;;
            2|"Espejos"|"Repositorios") echo "Espejos y repositorios no implementado aún." ;;
            3|"Partición"|"Disco") configurar_particiones ;;
            4|"Bootloader") configurar_bootloader ;;
            5|"Hostname") configurar_hostname ;;
            6|"Contraseña") configurar_root_password ;;
            7|"Usuario") configurar_usuario ;;
            8|"Audio") echo "Audio no implementado aún." ;;
            9|"Kernels") seleccionar_kernel ;;
            10|"Internet") echo "Configuración de red no implementada aún." ;;
            11|"Additional") echo "Paquetes adicionales no implementado aún." ;;
            12|"Timezone") configurar_timezone ;;
            13|"NTP") configurar_ntp ;;
            i|I|"Install") echo "Procediendo con la instalación..."; break ;;
            q|Q|"Abort") echo "Abortado por el usuario."; exit 0 ;;
            *) echo "Opción inválida. Intenta de nuevo." ;;
        esac
        echo
        read -p "Presiona Enter para continuar..."
        clear
    done
}

# Definiciones de funciones base vacías (serán llenadas luego)
configurar_particiones() {
    echo ">> Aquí se configurarán las particiones (próximamente)"
}

configurar_bootloader() {
    echo ">> Aquí se configurará el bootloader (próximamente)"
}

configurar_hostname() {
    echo ">> Aquí se configurará el hostname (próximamente)"
}

configurar_root_password() {
    echo ">> Aquí se configurará la contraseña de root (próximamente)"
}

configurar_usuario() {
    echo ">> Aquí se configurará el usuario (próximamente)"
}

seleccionar_kernel() {
    echo ">> Aquí se seleccionará el kernel (próximamente)"
}

configurar_timezone() {
    echo ">> Aquí se configurará la zona horaria (próximamente)"
}

configurar_ntp() {
    echo ">> Aquí se configurará NTP (próximamente)"
}

# Ejecutar menú
mostrar_menu
