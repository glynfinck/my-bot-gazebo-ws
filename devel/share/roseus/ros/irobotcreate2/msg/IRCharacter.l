;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::IRCharacter)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'IRCharacter (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::IRCHARACTER")
  (make-package "IROBOTCREATE2::IRCHARACTER"))

(in-package "ROS")
;;//! \htmlinclude IRCharacter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::IRCharacter
  :super ros::object
  :slots (_header _omni _left _right ))

(defmethod irobotcreate2::IRCharacter
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:omni __omni) 0)
    ((:left __left) 0)
    ((:right __right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _omni (round __omni))
   (setq _left (round __left))
   (setq _right (round __right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:omni
   (&optional __omni)
   (if __omni (setq _omni __omni)) _omni)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _omni
    1
    ;; uint8 _left
    1
    ;; uint8 _right
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _omni
       (write-byte _omni s)
     ;; uint8 _left
       (write-byte _left s)
     ;; uint8 _right
       (write-byte _right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _omni
     (setq _omni (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _left
     (setq _left (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right
     (setq _right (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get irobotcreate2::IRCharacter :md5sum-) "fdef8c079e4550ab8502f7b78ba5302e")
(setf (get irobotcreate2::IRCharacter :datatype-) "irobotcreate2/IRCharacter")
(setf (get irobotcreate2::IRCharacter :definition-)
      "Header header
uint8 omni
uint8 left
uint8 right

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



(provide :irobotcreate2/IRCharacter "fdef8c079e4550ab8502f7b78ba5302e")


