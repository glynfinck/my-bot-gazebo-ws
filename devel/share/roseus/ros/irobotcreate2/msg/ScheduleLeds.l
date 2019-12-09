;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::ScheduleLeds)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'ScheduleLeds (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::SCHEDULELEDS")
  (make-package "IROBOTCREATE2::SCHEDULELEDS"))

(in-package "ROS")
;;//! \htmlinclude ScheduleLeds.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::ScheduleLeds
  :super ros::object
  :slots (_header _sunday _monday _tuesday _wednesday _thursday _friday _saturday _colon _pm _am _clock _schedule ))

(defmethod irobotcreate2::ScheduleLeds
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sunday __sunday) nil)
    ((:monday __monday) nil)
    ((:tuesday __tuesday) nil)
    ((:wednesday __wednesday) nil)
    ((:thursday __thursday) nil)
    ((:friday __friday) nil)
    ((:saturday __saturday) nil)
    ((:colon __colon) nil)
    ((:pm __pm) nil)
    ((:am __am) nil)
    ((:clock __clock) nil)
    ((:schedule __schedule) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sunday __sunday)
   (setq _monday __monday)
   (setq _tuesday __tuesday)
   (setq _wednesday __wednesday)
   (setq _thursday __thursday)
   (setq _friday __friday)
   (setq _saturday __saturday)
   (setq _colon __colon)
   (setq _pm __pm)
   (setq _am __am)
   (setq _clock __clock)
   (setq _schedule __schedule)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sunday
   (&optional __sunday)
   (if __sunday (setq _sunday __sunday)) _sunday)
  (:monday
   (&optional __monday)
   (if __monday (setq _monday __monday)) _monday)
  (:tuesday
   (&optional __tuesday)
   (if __tuesday (setq _tuesday __tuesday)) _tuesday)
  (:wednesday
   (&optional __wednesday)
   (if __wednesday (setq _wednesday __wednesday)) _wednesday)
  (:thursday
   (&optional __thursday)
   (if __thursday (setq _thursday __thursday)) _thursday)
  (:friday
   (&optional __friday)
   (if __friday (setq _friday __friday)) _friday)
  (:saturday
   (&optional __saturday)
   (if __saturday (setq _saturday __saturday)) _saturday)
  (:colon
   (&optional __colon)
   (if __colon (setq _colon __colon)) _colon)
  (:pm
   (&optional __pm)
   (if __pm (setq _pm __pm)) _pm)
  (:am
   (&optional __am)
   (if __am (setq _am __am)) _am)
  (:clock
   (&optional __clock)
   (if __clock (setq _clock __clock)) _clock)
  (:schedule
   (&optional __schedule)
   (if __schedule (setq _schedule __schedule)) _schedule)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _sunday
    1
    ;; bool _monday
    1
    ;; bool _tuesday
    1
    ;; bool _wednesday
    1
    ;; bool _thursday
    1
    ;; bool _friday
    1
    ;; bool _saturday
    1
    ;; bool _colon
    1
    ;; bool _pm
    1
    ;; bool _am
    1
    ;; bool _clock
    1
    ;; bool _schedule
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _sunday
       (if _sunday (write-byte -1 s) (write-byte 0 s))
     ;; bool _monday
       (if _monday (write-byte -1 s) (write-byte 0 s))
     ;; bool _tuesday
       (if _tuesday (write-byte -1 s) (write-byte 0 s))
     ;; bool _wednesday
       (if _wednesday (write-byte -1 s) (write-byte 0 s))
     ;; bool _thursday
       (if _thursday (write-byte -1 s) (write-byte 0 s))
     ;; bool _friday
       (if _friday (write-byte -1 s) (write-byte 0 s))
     ;; bool _saturday
       (if _saturday (write-byte -1 s) (write-byte 0 s))
     ;; bool _colon
       (if _colon (write-byte -1 s) (write-byte 0 s))
     ;; bool _pm
       (if _pm (write-byte -1 s) (write-byte 0 s))
     ;; bool _am
       (if _am (write-byte -1 s) (write-byte 0 s))
     ;; bool _clock
       (if _clock (write-byte -1 s) (write-byte 0 s))
     ;; bool _schedule
       (if _schedule (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _sunday
     (setq _sunday (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _monday
     (setq _monday (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tuesday
     (setq _tuesday (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wednesday
     (setq _wednesday (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _thursday
     (setq _thursday (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _friday
     (setq _friday (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _saturday
     (setq _saturday (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _colon
     (setq _colon (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pm
     (setq _pm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _am
     (setq _am (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clock
     (setq _clock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _schedule
     (setq _schedule (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get irobotcreate2::ScheduleLeds :md5sum-) "4c552ea7c5b68737285d12a0dee0a839")
(setf (get irobotcreate2::ScheduleLeds :datatype-) "irobotcreate2/ScheduleLeds")
(setf (get irobotcreate2::ScheduleLeds :definition-)
      "Header header
bool sunday
bool monday
bool tuesday
bool wednesday
bool thursday
bool friday
bool saturday
bool colon
bool pm
bool am
bool clock
bool schedule

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



(provide :irobotcreate2/ScheduleLeds "4c552ea7c5b68737285d12a0dee0a839")


