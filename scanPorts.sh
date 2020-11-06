#!/bin/bash -xp

##!/bin/bash 

###################
# Script: scan_ports.sh
# Autor: rolmedo
# Fecha: 01/02/19
# Función: 	Leer los ficheros donde tenemos todas las ip públicas de nuestros 
#		equipos y clientes para poder una serie de escaneos de puertos 
#		abiertos. Estamos estudiando la mejor manera de escanear puertos ya
#		que la suma de estos tanto UDP como TCP supera los 120.000.
#
###################################################################################

ArrayFicherosEquipos="	equipos_185.32.28.112_01-02-19.txt 
			equipos_217.13.124.128_01-02-19.txt 
			equipos_185.32.28.128_01-02-19.txt 
			equipos_217.13.124.192_01-02-19.txt 
			equipos_212.92.39.0_01-02-19.txt 
			equipos_217.13.124.64_01-02-19.txt 
			equipos_212.92.55.0_01-02-19.txt 
			equipos_94.24.114.0_01-02-19.txt 
			equipos_217.13.118.96_01-02-19.txt 
			equipos_217.13.119.0_01-02-19.txt 
			equipos_217.13.124.0_01-02-19.txt"

#ArrayFicherosEquipos="equipos_185.32.28.112_01-02-19.txt equipos_185.32.28.128_01-02-19.txt"

#ArrayFicherosEquipos="equipos_185.32.28.112_01-02-19.txt"


startTime=`date +%H:%M`
dateToday=`date +%d_%m_%Y`
path_files="/root/scripts/scan_ports/"

function parse_name_file_for_directory {
	
	namefile=$1

	namedirectory=`echo "$namefile" | awk -F"_" '{ print $2 }'`

	echo $namedirectory
}

function scan_machines_topPorts {
	
	ficheroTXT=$1

	if [ ! -d "topPorts" ];
        then
                #directorio no existe
                mkdir -p "topPorts"
                cd "topPorts"
        else
                cd "topPorts"
        fi

		
	while read machine;
	do
		echo "Inicio SCAN $machine" > "$machine"_"$dateToday".txt; 
		startTime=`date +%H:%M`
		echo "Hora de Inicio Scan: $startTime" > "$machine"_"$dateToday".txt;

		nmap --top-ports 25 $machine >> "$machine"_"$dateToday".txt;
		#nmap -sS $machine >> "$machine"_"$dateToday".txt;

		finishTime=`date +%H:%M`
		echo "Hora fin Scan: $finishTime" >> "$machine"_"$dateToday".txt; 

	done < $path_files$ficheroTXT;
}

function scan_machines_10k-20k {
	
	ficheroTXT=$1

	if [ ! -d "10k-20k" ];
        then
                #directorio no existe
                mkdir -p "10k-20k"
                cd "10k-20k"
        else
                cd "10k-20k"
        fi

		
	while read machine;
	do
		echo "Inicio SCAN $machine" > "$machine"_"$dateToday".txt; 
		startTime=`date +%H:%M`
		echo "Hora de Inicio Scan: $startTime" > "$machine"_"$dateToday".txt;

		nmap -p 10000-20000 -T5 $machine >> "$machine"_"$dateToday".txt;

		finishTime=`date +%H:%M`
		echo "Hora fin Scan: $finishTime" >> "$machine"_"$dateToday".txt; 

	done < $path_files$ficheroTXT;
}

function scan_machines_20k-30k {
	
	ficheroTXT=$1

	if [ ! -d "20k-30k" ];
        then
                #directorio no existe
                mkdir -p "20k-30k"
                cd "20k-30k"
        else
                cd "20k-30k"
        fi

		
	while read machine;
	do
		echo "Inicio SCAN $machine" > "$machine"_"$dateToday".txt; 
		startTime=`date +%H:%M`
		echo "Hora de Inicio Scan: $startTime" > "$machine"_"$dateToday".txt;

		nmap -p 20000-30000 -T5 $machine >> "$machine"_"$dateToday".txt;

		finishTime=`date +%H:%M`
		echo "Hora fin Scan: $finishTime" >> "$machine"_"$dateToday".txt; 

	done < $path_files$ficheroTXT;
}

function scan_machines_30k-40k {
	
	ficheroTXT=$1

	if [ ! -d "30k-40k" ];
        then
                #directorio no existe
                mkdir -p "30k-40k"
                cd "30k-40k"
        else
                cd "30k-40k"
        fi

		
	while read machine;
	do
		echo "Inicio SCAN $machine" > "$machine"_"$dateToday".txt; 
		startTime=`date +%H:%M`
		echo "Hora de Inicio Scan: $startTime" > "$machine"_"$dateToday".txt;

		nmap -p 30000-40000 -T5 $machine >> "$machine"_"$dateToday".txt;

		finishTime=`date +%H:%M`
		echo "Hora fin Scan: $finishTime" >> "$machine"_"$dateToday".txt; 

	done < $path_files$ficheroTXT;
}

function scan_machines_40k-50k {
	
	ficheroTXT=$1

	if [ ! -d "40k-50k" ];
        then
                #directorio no existe
                mkdir -p "40k-50k"
                cd "40k-50k"
        else
                cd "40k-50k"
        fi

		
	while read machine;
	do
		echo "Inicio SCAN $machine" > "$machine"_"$dateToday".txt; 
		startTime=`date +%H:%M`
		echo "Hora de Inicio Scan: $startTime" > "$machine"_"$dateToday".txt;

		nmap -p 40000-50000 -T5 $machine >> "$machine"_"$dateToday".txt;

		finishTime=`date +%H:%M`
		echo "Hora fin Scan: $finishTime" >> "$machine"_"$dateToday".txt; 

	done < $path_files$ficheroTXT;
}

function scan_machines_50k-60k {
	
	ficheroTXT=$1

	if [ ! -d "50k-60k" ];
        then
                #directorio no existe
                mkdir -p "50k-60k"
                cd "50k-60k"
        else
                cd "50k-60k"
        fi

		
	while read machine;
	do
		echo "Inicio SCAN $machine" > "$machine"_"$dateToday".txt; 
		startTime=`date +%H:%M`
		echo "Hora de Inicio Scan: $startTime" > "$machine"_"$dateToday".txt;

		nmap -p 50000-60000 -T5 $machine >> "$machine"_"$dateToday".txt;

		finishTime=`date +%H:%M`
		echo "Hora fin Scan: $finishTime" >> "$machine"_"$dateToday".txt; 

	done < $path_files$ficheroTXT;
}
function scan_machines_60k-65k {
	
	ficheroTXT=$1

	if [ ! -d "60k-65k" ];
        then
                #directorio no existe
                mkdir -p "60k-65k"
                cd "60k-65k"
        else
                cd "60k-65k"
        fi

		
	while read machine;
	do
		echo "Inicio SCAN $machine" > "$machine"_"$dateToday".txt; 
		startTime=`date +%H:%M`
		echo "Hora de Inicio Scan: $startTime" > "$machine"_"$dateToday".txt;

		nmap -p 60000-65535 -T5 $machine >> "$machine"_"$dateToday".txt;

		finishTime=`date +%H:%M`
		echo "Hora fin Scan: $finishTime" >> "$machine"_"$dateToday".txt; 

	done < $path_files$ficheroTXT;
}
#BUCLE PRINCIPAL
for fichero in $ArrayFicherosEquipos;
do
	directorio=`parse_name_file_for_directory $fichero`
	
	if [ ! -d "$path_files"/"$directorio" ];
	then
		#directorio no existe
		mkdir -p "$path_files"/"$directorio"
		cd "$path_files"/"$directorio"
	else
		cd "$path_files"/"$directorio"
	fi
	#Scan puertos principales
	scan_machines_topPorts $fichero
	cd ../
	
	#Scan rango 10000-20000
	scan_machines_10k-20k $fichero
	cd ../
	
	#Scan rango 20000-30000
	scan_machines_20k-30k $fichero
	cd ../

	#Scan rango 30000-40000
	scan_machines_30k-40k $fichero
	cd ../

	#Scan rango 40000-50000
	scan_machines_40k-50k $fichero
	cd ../

	#Scan rango 50000-60000
	scan_machines_50k-60k $fichero
	cd ../

	#Scan rango 60000-65535
	scan_machines_60k-65k $fichero
	
	
done

finishTime=`date +%H:%M`

echo "Scaneo con fecha de $dateToday";
echo "Tiempo de ejecucción"
echo "Inicio: 	$startTime"
echo "Fin:	$finishTime"
