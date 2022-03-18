; Ivan Thieu
; Lisp routine to automatically load up custom dlls created using the AutoCAD .NET API
; Command automatically runs on startup
; Update the path based on location of the dlls

(defun-q MYSTARTUP ( )
	(command "netload" "C:\\Users\\ivan.thieu\\Desktop\\Custom Files\\Custom DLLs\\AutoCAD_Commands.dll")
	(command "netload" "C:\\Users\\ivan.thieu\\Desktop\\Custom Files\\Custom DLLs\\Pipe_modification.dll")
	(princ "DLL Loaded")
	(princ)
)
(setq S::STARTUP (append S::STARTUP MYSTARTUP))