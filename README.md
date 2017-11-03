# Functions about lists of Common Lisp
- sum
    Get as input a single list and return the sum of it.
    For example,
    ```lisp
    > (sum '(1 2 3))
    > 6
    ```
- multi
    Get as input a single list and return the product of it
- count-lst
    Get as input a single list and return the length of it.
    For example,
    ```lisp
    > (count-lst '(1 2 3))
    > 3
    ```
- add-elem
    Get as input a single list and optionally can give a number which is been added to each element of the list,if we dont give this number it's value is 1
    For example,
    ```lisp
        > (add-elem '(1 2 3))
        > (2 3 4)

- multi-elem
    It's the same like add-elem but now it's multiply each element of list with a number
    
- return-elem
    Get as input a single list and index which want to return to us
    For example
    ```lisp
    > (return-elem '(1 2 3) 0)
    > 1
    > (return-elem '(1 2 3) 1)
    > 2
    ```
- return-unq
    Get as input a single list a return the unique elements of the list
    For example,
    ```lisp
    > (return-unq '(1 1 2 2 2 4 44 4))
    >(1 2 4 44)
    ```
- return-indx-elem
    Get as input a single list and the element which want all indexes which appear in the given list
    For example,
    
  ```lisp
    > (return-unq '(1 1 2 2 2 4 44 4) 1)
    >(0 1)
    ```
- count-elem
    Get as input a single list and return a list with element of list and the number of them 
    For example,
    
    ```LISP
    >(count-elem '(1 2 2 3))
    > (1 .1 2 . 2 3 .1)
    ```
    
- range
    Get as is input the end of the range which want ,which begin from zero, optionally we can set the step and the begin of 
    our range, ofcourse it's return a list
    For example,
    ```lisp
        > (range 3)
        >(0 1 2 3)
        > (range 3 2)
        > (2 3)
    ```
- check-list-of-lists
    Get as input list and check if the list is list of lists

- merge-lst
    Get list of lists and return a single list
    ```lisp
    >(merge-lst '((1 2 3) (4 5 6)))
    > (1 2 3 4 5 6)
    ```
- euclidean-distance
    Get as input two lists and return the euclidean distance of them

- lists-add
    Get as input list of lists add them together
    For example,
    ```lisp
    > (list-add '((1 2 3) (1 2 3)))
    > (2 4 6)
    ```
- lists-sub
    Same as lists-add but this time subtraction between of lists

- lists-multi
    Same as lists-add but this time multiply  between of lists