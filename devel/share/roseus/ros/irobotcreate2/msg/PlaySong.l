;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::PlaySong)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'PlaySong (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::PLAYSONG")
  (make-package "IROBOTCREATE2::PLAYSONG"))

(in-package "ROS")
;;//! \htmlinclude PlaySong.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::PlaySong
  :super ros::object
  :slots (_header _song_number ))

(defmethod irobotcreate2::PlaySong
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:song_number __song_number) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _song_number (round __song_number))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:song_number
   (&optional __song_number)
   (if __song_number (setq _song_number __song_number)) _song_number)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _song_number
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _song_number
       (write-byte _song_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _song_number
     (setq _song_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get irobotcreate2::PlaySong :md5sum-) "4da85658329795298b78d2ec93fdcedc")
(setf (get irobotcreate2::PlaySong :datatype-) "irobotcreate2/PlaySong")
(setf (get irobotcreate2::PlaySong :definition-)
      "Header header
uint8 song_number

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



(provide :irobotcreate2/PlaySong "4da85658329795298b78d2ec93fdcedc")


