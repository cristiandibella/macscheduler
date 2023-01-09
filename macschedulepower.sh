#! /bin/bash

TURNO=$1

if [[ ! -z ${TURNO} ]]
then

  case ${TURNO} in

    noche|NOCHE)
		sudo pmset repeat shutdown MTWRFSU 8:30:00 && sudo pmset repeat wakeorpoweron MTWRFSU 23:30:00
	      ;;
    
    manana|MANANA)
                sudo pmset repeat shutdown MTWRFSU 22:00:00 && sudo pmset repeat wakeorpoweron MTWRFSU 7:20:00
        ;;

    tarde|TARDE)
                sudo pmset repeat shutdown MTWRFSU 1:00:00 && sudo pmset repeat wakeorpoweron MTWRFSU 8:00:00
        ;;
    test|TEST)
		sudo pmset repeat shutdown MTWRFSU 0:21:00

        ;;

   *)
	echo "Las opciones no coinciden con los turnos disponibles que son: manana, tarde, noche"
      ;;
  esac

else
  echo "no pases variables vacias pete. Tenes que poner el turno"
  exit 1
fi

