; Ivan Thieu
; Lisp routine to select the previous selection set
; If also using the AHK file, the command is also binded to ALT+Q
; Command is "SELECTPREVIOUS"

(defun c:SELECTPREVIOUS ( )
	(setq ss (ssget "P")) ; Get previous selection set
	(sssetfirst nil ss) ; Set selectionset as gripped
	(princ)
)