;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::Brushes)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'Brushes (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::BRUSHES")
  (make-package "IROBOTCREATE2::BRUSHES"))

(in-package "ROS")
;;//! \htmlinclude Brushes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::Brushes
  :super ros::object
  :slots (_header _main_brush _main_brush_pwm _main_brush_direction _side_brush _side_brush_pwm _side_brush_clockwise _vacuum _vacuum_pwm ))

(defmethod irobotcreate2::Brushes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:main_brush __main_brush) nil)
    ((:main_brush_pwm __main_brush_pwm) 0)
    ((:main_brush_direction __main_brush_direction) nil)
    ((:side_brush __side_brush) nil)
    ((:side_brush_pwm __side_brush_pwm) 0)
    ((:side_brush_clockwise __side_brush_clockwise) nil)
    ((:vacuum __vacuum) nil)
    ((:vacuum_pwm __vacuum_pwm) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _main_brush __main_brush)
   (setq _main_brush_pwm (round __main_brush_pwm))
   (setq _main_brush_direction __main_brush_direction)
   (setq _side_brush __side_brush)
   (setq _side_brush_pwm (round __side_brush_pwm))
   (setq _side_brush_clockwise __side_brush_clockwise)
   (setq _vacuum __vacuum)
   (setq _vacuum_pwm (round __vacuum_pwm))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:main_brush
   (&optional __main_brush)
   (if __main_brush (setq _main_brush __main_brush)) _main_brush)
  (:main_brush_pwm
   (&optional __main_brush_pwm)
   (if __main_brush_pwm (setq _main_brush_pwm __main_brush_pwm)) _main_brush_pwm)
  (:main_brush_direction
   (&optional __main_brush_direction)
   (if __main_brush_direction (setq _main_brush_direction __main_brush_direction)) _main_brush_direction)
  (:side_brush
   (&optional __side_brush)
   (if __side_brush (setq _side_brush __side_brush)) _side_brush)
  (:side_brush_pwm
   (&optional __side_brush_pwm)
   (if __side_brush_pwm (setq _side_brush_pwm __side_brush_pwm)) _side_brush_pwm)
  (:side_brush_clockwise
   (&optional __side_brush_clockwise)
   (if __side_brush_clockwise (setq _side_brush_clockwise __side_brush_clockwise)) _side_brush_clockwise)
  (:vacuum
   (&optional __vacuum)
   (if __vacuum (setq _vacuum __vacuum)) _vacuum)
  (:vacuum_pwm
   (&optional __vacuum_pwm)
   (if __vacuum_pwm (setq _vacuum_pwm __vacuum_pwm)) _vacuum_pwm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _main_brush
    1
    ;; int8 _main_brush_pwm
    1
    ;; bool _main_brush_direction
    1
    ;; bool _side_brush
    1
    ;; int8 _side_brush_pwm
    1
    ;; bool _side_brush_clockwise
    1
    ;; bool _vacuum
    1
    ;; int8 _vacuum_pwm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _main_brush
       (if _main_brush (write-byte -1 s) (write-byte 0 s))
     ;; int8 _main_brush_pwm
       (write-byte _main_brush_pwm s)
     ;; bool _main_brush_direction
       (if _main_brush_direction (write-byte -1 s) (write-byte 0 s))
     ;; bool _side_brush
       (if _side_brush (write-byte -1 s) (write-byte 0 s))
     ;; int8 _side_brush_pwm
       (write-byte _side_brush_pwm s)
     ;; bool _side_brush_clockwise
       (if _side_brush_clockwise (write-byte -1 s) (write-byte 0 s))
     ;; bool _vacuum
       (if _vacuum (write-byte -1 s) (write-byte 0 s))
     ;; int8 _vacuum_pwm
       (write-byte _vacuum_pwm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _main_brush
     (setq _main_brush (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _main_brush_pwm
     (setq _main_brush_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _main_brush_pwm 127) (setq _main_brush_pwm (- _main_brush_pwm 256)))
   ;; bool _main_brush_direction
     (setq _main_brush_direction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _side_brush
     (setq _side_brush (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _side_brush_pwm
     (setq _side_brush_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _side_brush_pwm 127) (setq _side_brush_pwm (- _side_brush_pwm 256)))
   ;; bool _side_brush_clockwise
     (setq _side_brush_clockwise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vacuum
     (setq _vacuum (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _vacuum_pwm
     (setq _vacuum_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _vacuum_pwm 127) (setq _vacuum_pwm (- _vacuum_pwm 256)))
   ;;
   self)
  )

(setf (get irobotcreate2::Brushes :md5sum-) "d4c497f02ce3244991df05e0d729013c")
(setf (get irobotcreate2::Brushes :datatype-) "irobotcreate2/Brushes")
(setf (get irobotcreate2::Brushes :definition-)
      "Header header
bool main_brush
int8 main_brush_pwm
bool main_brush_direction
bool side_brush
int8 side_brush_pwm
bool side_brush_clockwise
bool vacuum
int8 vacuum_pwm

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



(provide :irobotcreate2/Brushes "d4c497f02ce3244991df05e0d729013c")


