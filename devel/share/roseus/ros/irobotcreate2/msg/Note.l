;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::Note)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'Note (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::NOTE")
  (make-package "IROBOTCREATE2::NOTE"))

(in-package "ROS")
;;//! \htmlinclude Note.msg.html


(defclass irobotcreate2::Note
  :super ros::object
  :slots (_note _length ))

(defmethod irobotcreate2::Note
  (:init
   (&key
    ((:note __note) 0)
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _note (round __note))
   (setq _length (round __length))
   self)
  (:note
   (&optional __note)
   (if __note (setq _note __note)) _note)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; uint8 _note
    1
    ;; uint8 _length
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _note
       (write-byte _note s)
     ;; uint8 _length
       (write-byte _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _note
     (setq _note (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get irobotcreate2::Note :md5sum-) "4d9b44801be38c06e26bc85d74c2792b")
(setf (get irobotcreate2::Note :datatype-) "irobotcreate2/Note")
(setf (get irobotcreate2::Note :definition-)
      "uint8 note
uint8 length

")



(provide :irobotcreate2/Note "4d9b44801be38c06e26bc85d74c2792b")


