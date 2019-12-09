;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::RoombaSwitch)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'RoombaSwitch (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::ROOMBASWITCH")
  (make-package "IROBOTCREATE2::ROOMBASWITCH"))

(in-package "ROS")
;;//! \htmlinclude RoombaSwitch.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::RoombaSwitch
  :super ros::object
  :slots (_header _state ))

(defmethod irobotcreate2::RoombaSwitch
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get irobotcreate2::RoombaSwitch :md5sum-) "0821670ec5c727dca6fe68a1bf54ae6c")
(setf (get irobotcreate2::RoombaSwitch :datatype-) "irobotcreate2/RoombaSwitch")
(setf (get irobotcreate2::RoombaSwitch :definition-)
      "Header header
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



(provide :irobotcreate2/RoombaSwitch "0821670ec5c727dca6fe68a1bf54ae6c")


