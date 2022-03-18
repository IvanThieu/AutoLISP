; Ivan Thieu
; Commands to split up views
; Useful to quickly divide the views in a drawing to view plan and profile design at the same time
; "SingleView" will revert the drawing back to having one view
; "DoubleView" will split the drawing into two views divided vertically

(defun c:SingleView ( )
	(command "-VPORTS" "SI")
	(princ "Single VP")
	(princ))
	
(defun c:DoubleView ( )
	(command "-VPORTS" "2" "V")
	(princ "Double VP")
	(princ))