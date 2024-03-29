// Generated by gencpp from file irobotcreate2/Leds.msg
// DO NOT EDIT!


#ifndef IROBOTCREATE2_MESSAGE_LEDS_H
#define IROBOTCREATE2_MESSAGE_LEDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace irobotcreate2
{
template <class ContainerAllocator>
struct Leds_
{
  typedef Leds_<ContainerAllocator> Type;

  Leds_()
    : header()
    , warning(false)
    , dock(false)
    , spot(false)
    , dirt_detect(false)
    , clean_color(0)
    , clean_intensity(0)  {
    }
  Leds_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , warning(false)
    , dock(false)
    , spot(false)
    , dirt_detect(false)
    , clean_color(0)
    , clean_intensity(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _warning_type;
  _warning_type warning;

   typedef uint8_t _dock_type;
  _dock_type dock;

   typedef uint8_t _spot_type;
  _spot_type spot;

   typedef uint8_t _dirt_detect_type;
  _dirt_detect_type dirt_detect;

   typedef uint8_t _clean_color_type;
  _clean_color_type clean_color;

   typedef uint8_t _clean_intensity_type;
  _clean_intensity_type clean_intensity;





  typedef boost::shared_ptr< ::irobotcreate2::Leds_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::irobotcreate2::Leds_<ContainerAllocator> const> ConstPtr;

}; // struct Leds_

typedef ::irobotcreate2::Leds_<std::allocator<void> > Leds;

typedef boost::shared_ptr< ::irobotcreate2::Leds > LedsPtr;
typedef boost::shared_ptr< ::irobotcreate2::Leds const> LedsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::irobotcreate2::Leds_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::irobotcreate2::Leds_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::irobotcreate2::Leds_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::irobotcreate2::Leds_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irobotcreate2::Leds_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irobotcreate2::Leds_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irobotcreate2::Leds_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irobotcreate2::Leds_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::irobotcreate2::Leds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d69ee7dfd55b5e80fe8d68fdc28e3612";
  }

  static const char* value(const ::irobotcreate2::Leds_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd69ee7dfd55b5e80ULL;
  static const uint64_t static_value2 = 0xfe8d68fdc28e3612ULL;
};

template<class ContainerAllocator>
struct DataType< ::irobotcreate2::Leds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "irobotcreate2/Leds";
  }

  static const char* value(const ::irobotcreate2::Leds_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::irobotcreate2::Leds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"bool warning\n"
"bool dock\n"
"bool spot\n"
"bool dirt_detect\n"
"uint8 clean_color\n"
"uint8 clean_intensity\n"
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
;
  }

  static const char* value(const ::irobotcreate2::Leds_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::irobotcreate2::Leds_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.warning);
      stream.next(m.dock);
      stream.next(m.spot);
      stream.next(m.dirt_detect);
      stream.next(m.clean_color);
      stream.next(m.clean_intensity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Leds_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::irobotcreate2::Leds_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::irobotcreate2::Leds_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "warning: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.warning);
    s << indent << "dock: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dock);
    s << indent << "spot: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.spot);
    s << indent << "dirt_detect: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dirt_detect);
    s << indent << "clean_color: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clean_color);
    s << indent << "clean_intensity: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clean_intensity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IROBOTCREATE2_MESSAGE_LEDS_H
