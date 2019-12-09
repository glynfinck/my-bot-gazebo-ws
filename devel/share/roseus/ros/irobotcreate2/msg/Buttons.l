;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::Buttons)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'Buttons (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::BUTTONS")
  (make-package "IROBOTCREATE2::BUTTONS"))

(in-package "ROS")
;;//! \htmlinclude Buttons.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::Buttons
  :super ros::object
  :slots (_header _clean _spot _dock _day _hour _minute _schedule _clock ))

(defmethod irobotcreate2::Buttons
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:clean __clean) nil)
    ((:spot __spot) nil)
    ((:dock __dock) nil)
    ((:day __day) nil)
    ((:hour __hour) nil)
    ((:minute __minute) nil)
    ((:schedule __schedule) nil)
    ((:clock __clock) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _clean __clean)
   (setq _spot __spot)
   (setq _dock __dock)
   (setq _day __day)
   (setq _hour __hour)
   (setq _minute __minute)
   (setq _schedule __schedule)
   (setq _clock __clock)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:clean
   (&optional __clean)
   (if __clean (setq _clean __clean)) _clean)
  (:spot
   (&optional __spot)
   (if __spot (setq _spot __spot)) _spot)
  (:dock
   (&optional __dock)
   (if __dock (setq _dock __dock)) _dock)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:minute
   (&optional __minute)
   (if __minute (setq _minute __minute)) _minute)
  (:schedule
   (&optional __schedule)
   (if __schedule (setq _schedule __schedule)) _schedule)
  (:clock
   (&optional __clock)
   (if __clock (setq _clock __clock)) _clock)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _clean
    1
    ;; bool _spot
    1
    ;; bool _dock
    1
    ;; bool _day
    1
    ;; bool _hour
    1
    ;; bool _minute
    1
    ;; bool _schedule
    1
    ;; bool _clock
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _clean
       (if _clean (write-byte -1 s) (write-byte 0 s))
     ;; bool _spot
       (if _spot (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock
       (if _dock (write-byte -1 s) (write-byte 0 s))
     ;; bool _day
       (if _day (write-byte -1 s) (write-byte 0 s))
     ;; bool _hour
       (if _hour (write-byte -1 s) (write-byte 0 s))
     ;; bool _minute
       (if _minute (write-byte -1 s) (write-byte 0 s))
     ;; bool _schedule
       (if _schedule (write-byte -1 s) (write-byte 0 s))
     ;; bool _clock
       (if _clock (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _clean
     (setq _clean (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _spot
     (setq _spot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock
     (setq _dock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _day
     (setq _day (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _hour
     (setq _hour (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _minute
     (setq _minute (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _schedule
     (setq _schedule (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clock
     (setq _clock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get irobotcreate2::Buttons :md5sum-) "2c6635fea08c0a11307b4518b1f7fd79")
(setf (get irobotcreate2::Buttons :datatype-) "irobotcreate2/Buttons")
(setf (get irobotcreate2::Buttons :definition-)
      "Header header
bool clean
bool spot
bool dock
bool day
bool hour
bool minute
bool schedule
bool clock

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



(provide :irobotcreate2/Buttons "2c6635fea08c0a11307b4518b1f7fd79")


