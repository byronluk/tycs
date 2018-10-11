#lang scheme

; When Alyssa uses the custom "new-if" function --which wraps the cond in a function--
; application-order evaluation is being used and the parameters of "new-if" are evaluated
; so by passing in a recursive call sqrt-iter gets stuck in an infinite loop

; whereas the scheme built-in "if" operator is a special form that behaves by
; evaluating the predicate
; and the evaluates either the consequent or the alternative (only one of the two)