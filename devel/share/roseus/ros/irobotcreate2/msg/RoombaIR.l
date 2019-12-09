;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::RoombaIR)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'RoombaIR (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::ROOMBAIR")
  (make-package "IROBOTCREATE2::ROOMBAIR"))

(in-package "ROS")
;;//! \htmlinclude RoombaIR.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::RoombaIR
  :super ros::object
  :slots (_header _state _signal ))

(defmethod irobotcreate2::RoombaIR
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) nil)
    ((:signal __signal) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _signal (round __signal))
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
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _state
    1
    ;; uint16 _signal
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _signal
       (write-word _signal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _signal
     (setq _signal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get irobotcreate2::RoombaIR :md5sum-) "a2eb843f93c486d3df9c635f426907b6")
(setf (get irobotcreate2::RoombaIR :datatype-) "irobotcreate2/RoombaIR")
(setf (get irobotcreate2::RoombaIR :definition-)
      "Header header
bool state
uint16 signal

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



(provide :irobotcreate2/RoombaIR "a2eb843f93c486d3df9c635f426907b6")


