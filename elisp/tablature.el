(defun draw-tablature-head ()
  (save-excursion
    (insert-rectangle '("e|" "B|" "G|" "D|" "A|" "E|")))
  (forward-char))

(defun insert-tab-column (ncols)
  (interactive "ncolumn number :")
  (save-excursion
    (dotimes (i ncols)
      (save-excursion
	    (insert-rectangle '("-" "-" "-" "-" "-" "-")))))
  (forward-char))

(defun draw-tablature-end ()
  (save-excursion
    (insert-rectangle '("|" "|" "|" "|" "|" "|"))))

(defun draw-tablature ()
  (interactive)
  (draw-tablature-head)
  (insert-tab-column 30)
  (draw-tablature-end))
