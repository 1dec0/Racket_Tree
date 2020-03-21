;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Racket Project|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "abstraction.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "abstraction.rkt" "teachpack" "2htdp")) #f)))
; Koelzer, Madison
;
; CS A250
; May 28, 2019
;
; DrRacket Graphics

(start 600 600)

;/////////////////////////////////////////////////////////////////// background

(define background-color 'blue)
(draw-solid-rect (make-posn 0 0) 600 600 background-color)

;////////////////////////////Test
;/////////////////////////////////////////////////////////////////// trunk
(define trunk-center-x 400)
(define trunk-center-y 450)
(define trunk-center (make-posn trunk-center-x trunk-center-y))
(define trunk-width 25)
(define trunk-color 'SaddleBrown)
(define trunk-length (* trunk-width 10))
(define trunk-bottom-left-x (-  trunk-center-x trunk-width))

(for/list ((i trunk-length))
   (draw-solid-disk
     (make-posn trunk-center-x (- trunk-center-y i))
        trunk-width trunk-color)) ;trunk color

(draw-solid-rect (make-posn trunk-bottom-left-x trunk-center-y)
                 (* trunk-width 2) trunk-width background-color) ;Removes half circle at bottom of the trunk

;/////////////////////////////////////////////////////////////////// roots

(define root-1-conn-x trunk-center-x)
(define root-1-conn-y (- trunk-center-y 5))
(define root-1-conn (make-posn root-1-conn-x root-1-conn-y))

(define root-1-mid-x (- root-1-conn-x (* trunk-width 1.5)))
(define root-1-mid-y (+ root-1-conn-y (* trunk-width 0.5)))
(define root-1-mid (make-posn root-1-mid-x root-1-mid-y))

(define root-1-end-x (- root-1-mid-x (* trunk-width 0.5)))
(define root-1-end-y (+ root-1-mid-y (* trunk-width 0.8)))
(define root-1-end (make-posn root-1-end-x root-1-end-y))

(define root-width (* trunk-width 0.3))

(for/list ((i trunk-width)) ;From root-1-conn to root-1-mid
  (draw-solid-line root-1-mid (make-posn (- root-1-conn-x i) root-1-conn-y) trunk-color))

(for/list ((i (* trunk-width 2))) ;From root-1-mid to root-1-end
  (draw-solid-line root-1-end (make-posn (+ root-1-mid-x i) (- root-1-mid-y i)) trunk-color))


;(draw-solid-disk root-1-mid 2 'red) ;temp
;(draw-solid-disk root-1-conn 2 'red) ;temp
;(draw-solid-disk root-1-end 2 'red) ;temp











