#!/bin/bash

#########################
##
# Archivo: control_scan-v2.sh
# Autor: rolmedo
# Fecha: 05/03/19
# Función: Las semanas pares ejecutamos los escaneos de TCP y las impares los de UDP.
#
##
##########################

SEMANA=`date +"%V"`

SCANEO=`echo "$SEMANA%2" | bc`

if [ $SCANEO -eq 0 ];
then
	/root/scripts/scan_ports_xml/scanPorts.sh
	
elif [ $SCANEO -eq 1 ];
then
	
	/root/scripts/scan_ports_xml/scanPorts_UDP.sh
fi


