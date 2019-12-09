;; Auto-generated. Do not edit!


(when (boundp 'irobotcreate2::Song)
  (if (not (find-package "IROBOTCREATE2"))
    (make-package "IROBOTCREATE2"))
  (shadow 'Song (find-package "IROBOTCREATE2")))
(unless (find-package "IROBOTCREATE2::SONG")
  (make-package "IROBOTCREATE2::SONG"))

(in-package "ROS")
;;//! \htmlinclude Song.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass irobotcreate2::Song
  :super ros::object
  :slots (_header _song_number _notes ))

(defmethod irobotcreate2::Song
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:song_number __song_number) 0)
    ((:notes __notes) (let (r) (dotimes (i 0) (push (instance irobotcreate2::Note :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _song_number (round __song_number))
   (setq _notes __notes)
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
  (:notes
   (&rest __notes)
   (if (keywordp (car __notes))
       (send* _notes __notes)
     (progn
       (if __notes (setq _notes (car __notes)))
       _notes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _song_number
    1
    ;; irobotcreate2/Note[] _notes
    (apply #'+ (send-all _notes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _song_number
       (write-byte _song_number s)
     ;; irobotcreate2/Note[] _notes
     (write-long (length _notes) s)
     (dolist (elem _notes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _song_number
     (setq _song_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; irobotcreate2/Note[] _notes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _notes (let (r) (dotimes (i n) (push (instance irobotcreate2::Note :init) r)) r))
     (dolist (elem- _notes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get irobotcreate2::Song :md5sum-) "2a8e64bdbdd926225694c88b701e505f")
(setf (get irobotcreate2::Song :datatype-) "irobotcreate2/Song")
(setf (get irobotcreate2::Song :definition-)
      "Header header
uint8 song_number
Note[] notes

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

================================================================================
MSG: irobotcreate2/Note
uint8 note
uint8 length

")



(provide :irobotcreate2/Song "2a8e64bdbdd926225694c88b701e505f")


