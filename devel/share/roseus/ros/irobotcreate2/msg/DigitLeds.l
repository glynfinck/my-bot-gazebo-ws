;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::DigitLeds)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'DigitLeds (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::DIGITLEDS")
  (make-package "IROBOTCREATE2::DIGITLEDS"))

(in-package "ROS")
;;//! \htmlinclude DigitLeds.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::DigitLeds
  :super ros::object
  :slots (_header _digits ))

(defmethod irobotcreate2::DigitLeds
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:digits __digits) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _digits __digits)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:digits
   (&optional __digits)
   (if __digits (setq _digits __digits)) _digits)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _digits
    (* 1    (length _digits)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _digits
     (write-long (length _digits) s)
     (princ _digits s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _digits
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _digits (make-array n :element-type :char))
     (replace _digits buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get irobotcreate2::DigitLeds :md5sum-) "e7ef65e4fe68a8a88d61368aaeee0eef")
(setf (get irobotcreate2::DigitLeds :datatype-) "irobotcreate2/DigitLeds")
(setf (get irobotcreate2::DigitLeds :definition-)
      "Header header
uint8[] digits

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



(provide :irobotcreate2/DigitLeds "e7ef65e4fe68a8a88d61368aaeee0eef")


