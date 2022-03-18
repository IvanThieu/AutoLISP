; Ivan Thieu
; Lisp routing to change plot style to "WLG_standard.stb"
; WLG_standard.stb is the standard plot style table for WestLAND Group
; Command is ChangePlotTable

(defun c:ChangePlotTable ()
	(vl-load-com)
	(vlax-for lay (vla-get-layouts
	(vla-get-activedocument
	(vlax-get-acad-object)))
	(vla-put-stylesheet lay "WLG_standard.stb")
	)
	(princ "All layouts changed to WLG_standard.stb")
	(princ)
)