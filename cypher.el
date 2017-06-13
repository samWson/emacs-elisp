;;;; Trying to create a lazy evaluated alphabet

;; Single characters can return their ascii value by preceding them
;; with '?' e.g. ?A -> 65

(defconst ascii-A ?A "The ascii value of 'A'")
(defconst ascii-Z ?Z "The ascii value of 'Z'")

(defun alphabet ()
  "Return an ordered alphabet from start to end

Uses the global constants ascii-A and ascii-Z."
  (let ((nums (number-sequence ascii-A ascii-Z)))
    (mapcar 'byte-to-string nums)))

(setq double-alphabet (append (alphabet) (alphabet)))

;; I can make the list of numbers, and convert them to the alphabet. I
;; can create a double alphabet. Now to use the double alphabet to
;; create a tabula recta. I will use a Dictionary/Hash map like
;; structure.
