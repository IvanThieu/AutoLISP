; Ivan Thieu
; One command (MAKENPLT) to make a nonplot layer named "_NPLT"
; The other command (SETNPLT) is to set selected objects to the "_NPLT" layers
; If also using the AHK file, SETNPLT is also binded to the grave accent key "`"

(defun c:SETNPLT (/ obj_to_change )
	(setq obj_to_change (ssget))
	(setq prev_layer (getvar "CLAYER"))
	(command "-LAYER" "s" "_NPLT" "")
	(command "LAYCUR" obj_to_change "")
	(command "-LAYER" "s" prev_layer "")
	(princ "Set to _NPLT")
	(princ))

(defun c:MAKENPLT ( )
	(command "-LAYER" "N" "_NPLT" "P" "N" "_NPLT" "C" "T" "255,159,127" "_NPLT" "")
	(princ "Created _NPLT Layer")
	(princ))