;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::WheelDrop)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'WheelDrop (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::WHEELDROP")
  (make-package "IROBOTCREATE2::WHEELDROP"))

(in-package "ROS")
;;//! \htmlinclude WheelDrop.msg.html


(defclass irobotcreate2::WheelDrop
  :super ros::object
  :slots (_left _right ))

(defmethod irobotcreate2::WheelDrop
  (:init
   (&key
    ((:left __left) (instance irobotcreate2::RoombaSwitch :init))
    ((:right __right) (instance irobotcreate2::RoombaSwitch :init))
    )
   (send-super :init)
   (setq _left __left)
   (setq _right __right)
   self)
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:serialization-length
   ()
   (+
    ;; irobotcreate2/RoombaSwitch _left
    (send _left :serialization-length)
    ;; irobotcreate2/RoombaSwitch _right
    (send _right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; irobotcreate2/RoombaSwitch _left
       (send _left :serialize s)
     ;; irobotcreate2/RoombaSwitch _right
       (send _right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; irobotcreate2/RoombaSwitch _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; irobotcreate2/RoombaSwitch _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;;
   self)
  )

(setf (get irobotcreate2::WheelDrop :md5sum-) "0ce131cedcae0c89b4efbe13237e4425")
(setf (get irobotcreate2::WheelDrop :datatype-) "irobotcreate2/WheelDrop")
(setf (get irobotcreate2::WheelDrop :definition-)
      "RoombaSwitch left
RoombaSwitch right

================================================================================
MSG: irobotcreate2/RoombaSwitch
Header header
bool state

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



(provide :irobotcreate2/WheelDrop "0ce131cedcae0c89b4efbe13237e4425")


