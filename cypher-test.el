;; Unit tests for cypher.el

(defconst ref-alphabet
    '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O"
      "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
    "A correctly represented alphabet.")

(defconst last-index
  25
  "A correct alphabet is 26 characters long, therefore the last index
  should be 25.")

(ert-deftest test-alphabet ()
  "Tests that the alphabet is constructed correctly."
  (should (equal (alphabet) ref-alphabet))
  (should (equal (length (alphabet)) 26))
  (should (equal (car (alphabet)) "A"))
  (should (equal (elt (alphabet) last-index) "Z")))

