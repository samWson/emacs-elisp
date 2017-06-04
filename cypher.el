;;;; Trying to create a lazy evaluated alphabet

;; Single characters can return their ascii value by preceding them
;; with '?' e.g. ?A -> 65

(defun inc (num)
  "Return num incremented by 1"
  (+ num 1))

(defun range (start end)
  "Return a list of integers from start to end

If start is greater than end '() is returned."
  (if (> start end)
      '()
    (cons start (range (inc start) end))))

(let ((nums (range ?A ?Z)))
  (mapcar 'byte-to-string nums))
("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" ...)

;; I can make the list of numbers, and convert them to the
;; alphabet. Now figure out how to create an infinitely cycling lazy sequence.
