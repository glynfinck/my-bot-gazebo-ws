;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::Battery)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'Battery (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::BATTERY")
  (make-package "IROBOTCREATE2::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::Battery
  :super ros::object
  :slots (_header _power_cord _dock _level _time_remaining ))

(defmethod irobotcreate2::Battery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:power_cord __power_cord) nil)
    ((:dock __dock) nil)
    ((:level __level) 0.0)
    ((:time_remaining __time_remaining) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _power_cord __power_cord)
   (setq _dock __dock)
   (setq _level (float __level))
   (setq _time_remaining (round __time_remaining))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:power_cord
   (&optional __power_cord)
   (if __power_cord (setq _power_cord __power_cord)) _power_cord)
  (:dock
   (&optional __dock)
   (if __dock (setq _dock __dock)) _dock)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:time_remaining
   (&optional __time_remaining)
   (if __time_remaining (setq _time_remaining __time_remaining)) _time_remaining)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _power_cord
    1
    ;; bool _dock
    1
    ;; float32 _level
    4
    ;; uint32 _time_remaining
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _power_cord
       (if _power_cord (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock
       (if _dock (write-byte -1 s) (write-byte 0 s))
     ;; float32 _level
       (sys::poke _level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _time_remaining
       (write-long _time_remaining s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _power_cord
     (setq _power_cord (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock
     (setq _dock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _level
     (setq _level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _time_remaining
     (setq _time_remaining (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get irobotcreate2::Battery :md5sum-) "fea569ed505a7f18307badadb1c26b0c")
(setf (get irobotcreate2::Battery :datatype-) "irobotcreate2/Battery")
(setf (get irobotcreate2::Battery :definition-)
      "Header header
bool power_cord
bool dock
float32 level			# in %
uint32 time_remaining		# in minutes

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



(provide :irobotcreate2/Battery "fea569ed505a7f18307badadb1c26b0c")


