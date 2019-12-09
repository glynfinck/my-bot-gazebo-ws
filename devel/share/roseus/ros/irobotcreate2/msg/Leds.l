;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::Leds)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'Leds (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::LEDS")
  (make-package "IROBOTCREATE2::LEDS"))

(in-package "ROS")
;;//! \htmlinclude Leds.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::Leds
  :super ros::object
  :slots (_header _warning _dock _spot _dirt_detect _clean_color _clean_intensity ))

(defmethod irobotcreate2::Leds
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:warning __warning) nil)
    ((:dock __dock) nil)
    ((:spot __spot) nil)
    ((:dirt_detect __dirt_detect) nil)
    ((:clean_color __clean_color) 0)
    ((:clean_intensity __clean_intensity) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _warning __warning)
   (setq _dock __dock)
   (setq _spot __spot)
   (setq _dirt_detect __dirt_detect)
   (setq _clean_color (round __clean_color))
   (setq _clean_intensity (round __clean_intensity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:warning
   (&optional __warning)
   (if __warning (setq _warning __warning)) _warning)
  (:dock
   (&optional __dock)
   (if __dock (setq _dock __dock)) _dock)
  (:spot
   (&optional __spot)
   (if __spot (setq _spot __spot)) _spot)
  (:dirt_detect
   (&optional __dirt_detect)
   (if __dirt_detect (setq _dirt_detect __dirt_detect)) _dirt_detect)
  (:clean_color
   (&optional __clean_color)
   (if __clean_color (setq _clean_color __clean_color)) _clean_color)
  (:clean_intensity
   (&optional __clean_intensity)
   (if __clean_intensity (setq _clean_intensity __clean_intensity)) _clean_intensity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _warning
    1
    ;; bool _dock
    1
    ;; bool _spot
    1
    ;; bool _dirt_detect
    1
    ;; uint8 _clean_color
    1
    ;; uint8 _clean_intensity
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _warning
       (if _warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock
       (if _dock (write-byte -1 s) (write-byte 0 s))
     ;; bool _spot
       (if _spot (write-byte -1 s) (write-byte 0 s))
     ;; bool _dirt_detect
       (if _dirt_detect (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _clean_color
       (write-byte _clean_color s)
     ;; uint8 _clean_intensity
       (write-byte _clean_intensity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _warning
     (setq _warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock
     (setq _dock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _spot
     (setq _spot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dirt_detect
     (setq _dirt_detect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _clean_color
     (setq _clean_color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _clean_intensity
     (setq _clean_intensity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get irobotcreate2::Leds :md5sum-) "d69ee7dfd55b5e80fe8d68fdc28e3612")
(setf (get irobotcreate2::Leds :datatype-) "irobotcreate2/Leds")
(setf (get irobotcreate2::Leds :definition-)
      "Header header
bool warning
bool dock
bool spot
bool dirt_detect
uint8 clean_color
uint8 clean_intensity

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :irobotcreate2/Leds "d69ee7dfd55b5e80fe8d68fdc28e3612")


