// Generated by gencpp from file irobotcreate2/Song.msg
// DO NOT EDIT!


#ifndef IROBOTCREATE2_MESSAGE_SONG_H
#define IROBOTCREATE2_MESSAGE_SONG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <irobotcreate2/Note.h>

namespace irobotcreate2
{
template <class ContainerAllocator>
struct Song_
{
  typedef Song_<ContainerAllocator> Type;

  Song_()
    : header()
    , song_number(0)
    , notes()  {
    }
  Song_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , song_number(0)
    , notes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _song_number_type;
  _song_number_type song_number;

   typedef std::vector< ::irobotcreate2::Note_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::irobotcreate2::Note_<ContainerAllocator> >::other >  _notes_type;
  _notes_type notes;





  typedef boost::shared_ptr< ::irobotcreate2::Song_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::irobotcreate2::Song_<ContainerAllocator> const> ConstPtr;

}; // struct Song_

typedef ::irobotcreate2::Song_<std::allocator<void> > Song;

typedef boost::shared_ptr< ::irobotcreate2::Song > SongPtr;
typedef boost::shared_ptr< ::irobotcreate2::Song const> SongConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::irobotcreate2::Song_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::irobotcreate2::Song_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace irobotcreate2

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'irobotcreate2': ['/home/glyn/mybot_ws/src/irobotcreate2ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::irobotcreate2::Song_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::irobotcreate2::Song_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irobotcreate2::Song_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irobotcreate2::Song_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irobotcreate2::Song_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irobotcreate2::Song_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::irobotcreate2::Song_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a8e64bdbdd926225694c88b701e505f";
  }

  static const char* value(const ::irobotcreate2::Song_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a8e64bdbdd92622ULL;
  static const uint64_t static_value2 = 0x5694c88b701e505fULL;
};

template<class ContainerAllocator>
struct DataType< ::irobotcreate2::Song_<ContainerAllocator> >
{
  static const char* value()
  {
    return "irobotcreate2/Song";
  }

  static const char* value(const ::irobotcreate2::Song_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::irobotcreate2::Song_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint8 song_number\n"
"Note[] notes\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: irobotcreate2/Note\n"
"uint8 note\n"
"uint8 length\n"
;
  }

  static const char* value(const ::irobotcreate2::Song_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::irobotcreate2::Song_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.song_number);
      stream.next(m.notes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Song_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::irobotcreate2::Song_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::irobotcreate2::Song_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "song_number: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.song_number);
    s << indent << "notes[]" << std::endl;
    for (size_t i = 0; i < v.notes.size(); ++i)
    {
      s << indent << "  notes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::irobotcreate2::Note_<ContainerAllocator> >::stream(s, indent + "    ", v.notes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IROBOTCREATE2_MESSAGE_SONG_H
