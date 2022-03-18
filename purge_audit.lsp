; Ivan Thieu
; Command that combines the Purge All, Purge Regapps, and Audit commands into one
; Command is used to regularly clean and maintain files
; Saves file at the end
; Command is "PUAUDIT"

(defun c:puaudit ()
	(command "_PURGE" "A" "*" "N")
	(command "_PURGE" "re" "*" "N")
	(command "_AUDIT" "Y")
	(command "QSAVE")
	(princ "Purged and Audited")
	(princ)
)
