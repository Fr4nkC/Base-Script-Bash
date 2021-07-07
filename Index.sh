#!/bin/bash
#===================================================================================#
#
#.SYNOPSIS
# -
#.DESCRIPTION
# -
#.PARAMETER
# -
#.INPUTS
# - 
#.OUTPUTS
# -
#.EXAMPLE
# -
#.NOTES
#    Author: Fr4nkC
#    Requisito: version 0.0.1
#    
#.LINK 
#    
#    Version: 0.1.1
#     
#===================================================================================#


## ---- Incluir funciones

## ---- Generar ID de la actividad basado en la fecha de ejecución.
fecha=$(date +"%D" | tr / -)
hostName=$(uname -n)
ID=$(date +"%D_%T" | sed 's/:/_/g' | tr / .)
usuario=$(whoami)
Ip=$( ip addr show dev eth0 | grep inet | head -n 1 | awk '{print $2}')
tiempo=$(date +"%T" | tr ':' '\a')
nombreCarpeta="fecha_$fecha_id_$tiempo"

## ---- Versión del Sistema Operativo.
versionSO=$(cat /etc/redhat-release)

## ---- Modo de compatibilidad basado en la versión del Sistema Operativo.
listVersionOk=( "NA" "Red Hat Enterprise Linux Server release 7.6 (Maipo)" )

## ---- Determinar si el script es compatible con el Sistema Operativo.

	## ---- Crear respaldo antes de la actividad.

	## ---- Limpiar pantalla

## ---- Mostrar Menú	
clear
while true; do
	clear
	echo "*--------------------------------------------------------------------------------*"
	echo "* Fecha: $fecha"
	echo "* Nombre del servidor: $hostName"
	echo "* IP: $Ip"
	echo "* Sistema Operativo detectado: $versionSO"
	echo "* Modo de compatibilidad: $CompatibilityModeSO"
	echo "* Carpeta de respaldo: $nombreCarpeta"
	echo "*--------------------------------------------------------------------------------*"
	echo "* 1.- Respaldar Sistema de Archivos proyectos_prod."
	echo "* 2.- Respaldar Sistema de Archivos observatorio."
	echo "* 3.- Respaldar Base de Datos proyectos_prod."
	echo "* 4.- Respaldar Base de Datos observatorio."
	echo "* 5.- Respaldo FULL."
	echo "* q.- Salir"
	echo ""

	echo -n "Opción:: "
	read choice
	echo ""

	# Crear carpeta de respaldo
	mkdir ./respaldo/$nombreCarpeta

	## ---- Ejecuciones de acuerdo al Menú
	case $choice in
		1)
		# Opción 1.
		echo "Opción 1"
		;;
		2)
		# Opción 2.
	    echo "Opción 2"
		;;
		3)
		# Opción 3.
		echo "Opción 3"
		;;
		4)
		# Opción 4.
		echo "Opción 4"
		;;
		5)
        # Opción 5.
        echo "Opción 5"
		;;
		'q')
		# Salir.
		break
		;;
		*)
		echo "Opción no valida."
		;;
	esac
	pause 'Pulse la tecla [Intro] para continuar...'

done