;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::Diagnostic)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'Diagnostic (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::DIAGNOSTIC")
  (make-package "IROBOTCREATE2::DIAGNOSTIC"))

(in-package "ROS")
;;//! \htmlinclude Diagnostic.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::Diagnostic
  :super ros::object
  :slots (_header _left_motor_current _right_motor_current _main_brush_current _side_brush_current _left_motor_overcurrent _right_motor_overcurrent _main_brush_overcurrent _side_brush_overcurrent _battery_current _battery_voltage _battery_temperature ))

(defmethod irobotcreate2::Diagnostic
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_motor_current __left_motor_current) 0)
    ((:right_motor_current __right_motor_current) 0)
    ((:main_brush_current __main_brush_current) 0)
    ((:side_brush_current __side_brush_current) 0)
    ((:left_motor_overcurrent __left_motor_overcurrent) nil)
    ((:right_motor_overcurrent __right_motor_overcurrent) nil)
    ((:main_brush_overcurrent __main_brush_overcurrent) nil)
    ((:side_brush_overcurrent __side_brush_overcurrent) nil)
    ((:battery_current __battery_current) 0)
    ((:battery_voltage __battery_voltage) 0)
    ((:battery_temperature __battery_temperature) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_motor_current (round __left_motor_current))
   (setq _right_motor_current (round __right_motor_current))
   (setq _main_brush_current (round __main_brush_current))
   (setq _side_brush_current (round __side_brush_current))
   (setq _left_motor_overcurrent __left_motor_overcurrent)
   (setq _right_motor_overcurrent __right_motor_overcurrent)
   (setq _main_brush_overcurrent __main_brush_overcurrent)
   (setq _side_brush_overcurrent __side_brush_overcurrent)
   (setq _battery_current (round __battery_current))
   (setq _battery_voltage (round __battery_voltage))
   (setq _battery_temperature (round __battery_temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_motor_current
   (&optional __left_motor_current)
   (if __left_motor_current (setq _left_motor_current __left_motor_current)) _left_motor_current)
  (:right_motor_current
   (&optional __right_motor_current)
   (if __right_motor_current (setq _right_motor_current __right_motor_current)) _right_motor_current)
  (:main_brush_current
   (&optional __main_brush_current)
   (if __main_brush_current (setq _main_brush_current __main_brush_current)) _main_brush_current)
  (:side_brush_current
   (&optional __side_brush_current)
   (if __side_brush_current (setq _side_brush_current __side_brush_current)) _side_brush_current)
  (:left_motor_overcurrent
   (&optional __left_motor_overcurrent)
   (if __left_motor_overcurrent (setq _left_motor_overcurrent __left_motor_overcurrent)) _left_motor_overcurrent)
  (:right_motor_overcurrent
   (&optional __right_motor_overcurrent)
   (if __right_motor_overcurrent (setq _right_motor_overcurrent __right_motor_overcurrent)) _right_motor_overcurrent)
  (:main_brush_overcurrent
   (&optional __main_brush_overcurrent)
   (if __main_brush_overcurrent (setq _main_brush_overcurrent __main_brush_overcurrent)) _main_brush_overcurrent)
  (:side_brush_overcurrent
   (&optional __side_brush_overcurrent)
   (if __side_brush_overcurrent (setq _side_brush_overcurrent __side_brush_overcurrent)) _side_brush_overcurrent)
  (:battery_current
   (&optional __battery_current)
   (if __battery_current (setq _battery_current __battery_current)) _battery_current)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:battery_temperature
   (&optional __battery_temperature)
   (if __battery_temperature (setq _battery_temperature __battery_temperature)) _battery_temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _left_motor_current
    2
    ;; int16 _right_motor_current
    2
    ;; int16 _main_brush_current
    2
    ;; int16 _side_brush_current
    2
    ;; bool _left_motor_overcurrent
    1
    ;; bool _right_motor_overcurrent
    1
    ;; bool _main_brush_overcurrent
    1
    ;; bool _side_brush_overcurrent
    1
    ;; int16 _battery_current
    2
    ;; int16 _battery_voltage
    2
    ;; int8 _battery_temperature
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _left_motor_current
       (write-word _left_motor_current s)
     ;; int16 _right_motor_current
       (write-word _right_motor_current s)
     ;; int16 _main_brush_current
       (write-word _main_brush_current s)
     ;; int16 _side_brush_current
       (write-word _side_brush_current s)
     ;; bool _left_motor_overcurrent
       (if _left_motor_overcurrent (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_motor_overcurrent
       (if _right_motor_overcurrent (write-byte -1 s) (write-byte 0 s))
     ;; bool _main_brush_overcurrent
       (if _main_brush_overcurrent (write-byte -1 s) (write-byte 0 s))
     ;; bool _side_brush_overcurrent
       (if _side_brush_overcurrent (write-byte -1 s) (write-byte 0 s))
     ;; int16 _battery_current
       (write-word _battery_current s)
     ;; int16 _battery_voltage
       (write-word _battery_voltage s)
     ;; int8 _battery_temperature
       (write-byte _battery_temperature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _left_motor_current
     (setq _left_motor_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_motor_current
     (setq _right_motor_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _main_brush_current
     (setq _main_brush_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _side_brush_current
     (setq _side_brush_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _left_motor_overcurrent
     (setq _left_motor_overcurrent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_motor_overcurrent
     (setq _right_motor_overcurrent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _main_brush_overcurrent
     (setq _main_brush_overcurrent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _side_brush_overcurrent
     (setq _side_brush_overcurrent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _battery_current
     (setq _battery_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _battery_temperature
     (setq _battery_temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _battery_temperature 127) (setq _battery_temperature (- _battery_temperature 256)))
   ;;
   self)
  )

(setf (get irobotcreate2::Diagnostic :md5sum-) "c5ab1a026621d8d87d7316b146c2ca2a")
(setf (get irobotcreate2::Diagnostic :datatype-) "irobotcreate2/Diagnostic")
(setf (get irobotcreate2::Diagnostic :definition-)
      "Header header
int16 left_motor_current
int16 right_motor_current
int16 main_brush_current
int16 side_brush_current
bool left_motor_overcurrent
bool right_motor_overcurrent
bool main_brush_overcurrent
bool side_brush_overcurrent
int16 battery_current
int16 battery_voltage
int8 battery_temperature

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



(provide :irobotcreate2/Diagnostic "c5ab1a026621d8d87d7316b146c2ca2a")


