; Ivan Thieu
; Lisp routine to set a plot style for a layer
; Inputs are the layer name or layer name pattern (e.g *UT_SD* will apply the command to all layers that contain "UT_SD")
; Plot style names are the HF_Standard.stb or WLG_Standard.stb files (Normal, 40% Black, 100% Black, etc)
; When entering the plot style, nest the style in parentheses (e.g. "40% Black", "100% Black", etc)
; Command is SETPSTYLE

(defun c:SETPSTYLE ( )
	(setq layer (getstring "\nEnter layer name/regex: "))
	(setq pstyle (getstring "Plot Style Name to Set (HF_Standard): "))
	(command "-LAYER" "PS" pstyle layer "")
	(princ "Plot Styles changed for the layers")
	(princ))