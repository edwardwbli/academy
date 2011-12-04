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

(defun plot-function (fn start end &optional (width 64) (height 32))
  "Show a graph of FN of size WIDTHxHEIGHT with the X axis bounded by START and END."
  (let ((bitmap (make-bitmap width height))
        (step (/ (- end start) width))
        (mid (floor height 2)))
    (loop for x from start to end by step
          for xi from 0
          do (let ((y (- mid (floor (funcall fn x) step))))
               (set-pixel bitmap xi (floor y))))
    (draw-border bitmap)
    (draw-bitmap bitmap)))

;;; !!! Attention fellow hackers!
;;;     Additional interesting math functions demos are most welcome!

(defparameter *demo-math-functions*
  `((,(lambda (x) x) -10 10)
    (sin ,(- pi) ,pi)
    (cos ,(- pi) ,pi)
    (tan ,(- pi) ,pi)
    (atan ,(- pi) ,pi)))

(defun visualize-math-functions ()
  "Show plots of various well known math functions."
  (loop for (fn start end) in *demo-math-functions*
        do (plot-function fn start end)
           (terpri)))
