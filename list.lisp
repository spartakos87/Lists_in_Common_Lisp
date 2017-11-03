					; Sum ,multiple,count list

(defun sum (lst )
  (eval (cons '+ lst))
  
  )

(defun multi (lst)
  (eval (cons '* lst))
  )


(defun count-lst (lst &optional (s 0))
  (if (cdr lst)
      (count-lst (cdr lst) (+ s 1))
      (+ s 1)
      )
  )



(defun add-elem (lst &optional (a 1) ( temp '()))
  (if (cdr lst)
      (add-elem (cdr lst) a (cons (+ a (car lst)) temp))
 			    (reverse  (cons (+ a (car lst)) temp))
      )
  )

(defun multi-elem (lst &optional (a 1) ( temp '()))
  (if (cdr lst)
      (multi-elem (cdr lst) a (cons (* a (car lst)) temp))
    (reverse  (cons (* a (car lst)) temp))
      )
  )

(defun return-elem (lst idx &optional (c 0))
;return element of list when we give a specific index
  (if (and (= c 0) (> idx (count-lst lst)))
						(write-line "Out of range")
						(progn
	   (if (< c idx)
	       (return-elem (cdr lst) idx (+ c 1))
	       (car lst)
	       )
	   )))					
  


				
(defun return-unq (lst &optional (c 0) (u '()))
  ;return unique elements of list
	   (if (< c (count-lst lst))
	       (progn
		 (if (find (return-elem lst c) u)
		     (return-unq lst (+ c 1) u)
		     (return-unq lst (+ c 1) (cons (return-elem lst c) u))
		     )
		 )
	       (reverse u)
	       )
	   )
    



    




(defun return-indx-elem (lst n &optional (c 0) (idx_lst '()))
					;return all indexs which appear a given element
  (if (< c (count-lst lst))
	 (progn
	      (if (= (return-elem lst c) n)
		   (return-indx-elem  lst n (+ c 1) (cons c idx_lst))
		   (return-indx-elem  lst n (+ c 1) idx_lst))
	      )
	 (reverse idx_lst)))
	   
	 

    

(defun ce2 (lst unq-lst &optional (c 0) (hs '()))
  (if (< c (count-lst unq-lst))
      (ce2 lst unq-lst (+ c 1)	(acons (return-elem unq-lst c)
				       (count-lst (return-indx-elem  lst  (return-elem unq-lst c))) hs))
      (reverse hs)
))



      (defun count-elem (lst)
					; return element and the number of them
					;for example as input (1 2 2 3) => (1 . 1 2 . 2 3.1)
  (ce2 lst (return-unq lst))
 )





(defun range ( e &optional  (b 0) (s 1) (lst '()))
	   (if (<= b e)
	       (range e (+ b s) s (cons b lst))
	       (reverse lst)))

(defun check-list-of-lists (lst)
  ;Check if  lst is lst of lists
	   (if (cdr lst)
	       (progn
		 (if (listp (car lst))
		     (check-list-of-lists (cdr lst)) nil))
	       (if (listp (car lst)) t nil)))

(defun ml (a r)
  (if (cdr r)
      (ml (cons (car r) a) (cdr r))
      (cons (car r) a)))


(defun merge-lst (lst &optional (l '()))
  (if (check-list-of-lists lst)
      (progn
  (if (cdr lst)
      (merge-lst (cdr lst)  (ml l (car lst)))
      (ml l (car lst))
      ))
      "Not list of lists"))


(defun euclidean-distance (lstA lstB &optional (l '()))
  (if (and (cdr lstA) (cdr lstB))
      (euclidean-distance (cdr lstA) (cdr lstB) (cons (- (car lstB) (car lstA)) l))
(sqrt (eval (cons '+ (reverse (cons (- (car lstB) (car lstA)) l)))))
))





;praxeis metaxy liston px ((1 2 3) (1 2 3)) =+=> (2 4 6)


(defun lists-add (lsts &optional (l '()))
	   (if (cdr (car lsts))
	       (lists-add (mapcar #'cdr lsts) (cons (eval (cons '+ (mapcar #'car lsts))) l))
	     (reverse  (cons (eval (cons '+ (mapcar #'car lsts))) l))))

(defun lists-sub (lsts &optional (l '()))
	   (if (cdr (car lsts))
	       (lists-sub (mapcar #'cdr lsts) (cons (eval (cons '- (mapcar #'car lsts))) l))
	     (reverse  (cons (eval (cons '- (mapcar #'car lsts))) l))))

(defun lists-multi (lsts &optional (l '()))
	   (if (cdr (car lsts))
	       (lists-multi (mapcar #'cdr lsts) (cons (eval (cons '* (mapcar #'car lsts))) l))
	     (reverse  (cons (eval (cons '* (mapcar #'car lsts))) l))))
