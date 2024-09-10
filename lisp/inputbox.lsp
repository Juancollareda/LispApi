(defun inputbox (prompt title default)

  (setq dcl_id (load_dialog "inputbox.dcl"))
  (if (not (new_dialog "inputbox" dcl_id))
    (exit)
  )

  (set_tile "prompt" prompt)
  (set_tile "title" title)
  (set_tile "eb1" default)
  (mode_tile "eb1" 2)

  (action_tile
    "cancel"
    "(done_dialog)
     (setq result nil)"
  )
  (action_tile
    "accept"
    "(setq inputvalue (get_tile \"eb1\"))
     (done_dialog)
     (setq result T)"
  )
  (start_dialog)
  (unload_dialog dcl_id)
  (princ)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(princ)
