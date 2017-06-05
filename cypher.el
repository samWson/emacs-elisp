;;;; Trying to create a lazy evaluated alphabet

;; Single characters can return their ascii value by preceding them
;; with '?' e.g. ?A -> 65

(defconst ascii-A ?A "The ascii value of 'A'")
(defconst ascii-Z ?Z "The ascii value of 'Z'")

(defun inc (num)
  "Return num incremented by 1"
  (+ num 1))

(defun range (start end)
  "Return a list of integers from start to end

If start is greater than end '() is returned."
  (if (> start end)
      '()
    (cons start (range (inc start) end))))

(defun alphabet ()
  "Return an ordered alphabet from start to end

Uses the global constants ascii-A and ascii-Z."
  (let ((nums (range ascii-A ascii-Z)))
    (mapcar 'byte-to-string nums)))

;; I can make the list of numbers, and convert them to the
;; alphabet. Now figure out how to create an infinitely cycling lazy sequence.
