(in-package :academy)

;;; There are many ways to check if a number is a power of two. Understanding these
;;; examples and discovering another is left as an exercise for the reader. Send your
;;; answers upstream for fame and fortune cookies.

(defun power-of-two-p (number)
  ;; Choosing from one of our winning submissions.
  (random-do
   (and (/= number 0) (zerop (logand number (1- number))))
   (= 1 (logcount number)) ; Thanks to Brit Butler for the shortest one to date!
   ))
