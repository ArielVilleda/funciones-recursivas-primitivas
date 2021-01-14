(defun sucesor(n)
    (if (< n 0)
        0
        (+ n 1)
        )
    )

(defun predecesor(n)
    (if (< n 1)
        0
        (- n 1)
        )
    )

(defun monus(n r)
    (if (= r 0)
        n
        (predecesor(monus n (- r 1)))
        )
    )

(defun suma(n s)
    (if (= s 0)
        n
        (sucesor(suma n (- s 1)))
        )
    )

(defun mult(n m)
    (if (= m 0)
        0
        ( suma n (mult n (- m 1)) )
        )
    )

(defun expo(n e)
    (if (= e 0)
        1
        ( mult n ( expo n (- e 1) ) )
        )
    )

(defun equ(x y)
    ( monus 1 ( suma (monus y x) (monus x y) ) )
    )

(defun coc(n c)
    (if (= n 0)
        0
        ( suma (coc (- n 1) c) (equ n (suma (mult (coc (- n 1) c) c) c) ) )
        )
    )

(defvar mint 0 )
(defun div(n d)
    (setq mint 0 )
    (if (> d 0)
        (loop
            (if (= (monus (+ n 1) (suma (mult mint d) d)) 0)
                (return mint)  ; retornando minimizacion
                )
            (setq mint (+ mint 1))
            )
        'undefined  ; retornando undefined
        )
    )

(defun facto(n)
    (if (< n 1)
          1
          ( mult n (facto (- n 1)) )
          )
    )

(defun fibo(n)
    (if (> n 1)
        ( suma (fibo(- n 1)) (fibo (- n 2)) )
        (if (= n 1)
            1
            0
            )
        )
    )

(defun main()
    (format t "monus 4 3: ~d" (monus 4 3) )(terpri)
    (format t "monus 3 4: ~d" (monus 3 4) )(terpri)

    (format t "suma 3 4: ~d" (suma 3 4) )(terpri)
    (format t "suma 4 3: ~d" (suma 4 3) )(terpri)

    (format t "mult 3 4: ~d" (mult 3 4) )(terpri)
    (format t "mult 2 512: ~d" (mult 2 512) )(terpri)

    (format t "expo 2 10: ~d" (expo 2 10) )(terpri)
    (format t "expo 3 4: ~d" (expo 3 4) )(terpri)

    (format t "equ 5 2: ~d" (equ 5 2) )(terpri)
    (format t "equ 5 5: ~d" (equ 5 5) )(terpri)

    (format t "coc 5 2: ~d" (coc 5 2) )(terpri)
    (format t "coc 4 7: ~d" (coc 4 7) )(terpri)
    (format t "coc 5 0: ~d" (coc 5 0) )(terpri)

    (format t "div 100 5: ~d" (div 100 5) )(terpri)
    (format t "div 0 1: ~d" (div 0 1) )(terpri)
    (format t "div 4 6: ~d" (div 4 6) )(terpri)
    (format t "div 5 0: ~d" (div 5 0) )(terpri)

    (format t "facto 5: ~d" (facto 5) )(terpri)
    (format t "facto 7: ~d" (facto 7) )(terpri)

    (format t "fibo 5: ~d" (fibo 5) )(terpri)
    (format t "fibo 9: ~d" (fibo 9) )(terpri)

    (exit)
    )
