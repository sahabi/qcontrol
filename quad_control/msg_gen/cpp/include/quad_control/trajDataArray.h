/* Auto-generated by genmsg_cpp for file /home/sahabi/ws/sandbox/quad_control/msg/trajDataArray.msg */
#ifndef QUAD_CONTROL_MESSAGE_TRAJDATAARRAY_H
#define QUAD_CONTROL_MESSAGE_TRAJDATAARRAY_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "quad_control/trajData.h"

namespace quad_control
{
template <class ContainerAllocator>
struct trajDataArray_ {
  typedef trajDataArray_<ContainerAllocator> Type;

  trajDataArray_()
  : trajectory()
  {
  }

  trajDataArray_(const ContainerAllocator& _alloc)
  : trajectory(_alloc)
  {
  }

  typedef std::vector< ::quad_control::trajData_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::quad_control::trajData_<ContainerAllocator> >::other >  _trajectory_type;
  std::vector< ::quad_control::trajData_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::quad_control::trajData_<ContainerAllocator> >::other >  trajectory;


  typedef boost::shared_ptr< ::quad_control::trajDataArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quad_control::trajDataArray_<ContainerAllocator>  const> ConstPtr;
}; // struct trajDataArray
typedef  ::quad_control::trajDataArray_<std::allocator<void> > trajDataArray;

typedef boost::shared_ptr< ::quad_control::trajDataArray> trajDataArrayPtr;
typedef boost::shared_ptr< ::quad_control::trajDataArray const> trajDataArrayConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::quad_control::trajDataArray_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::quad_control::trajDataArray_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace quad_control

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::quad_control::trajDataArray_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::quad_control::trajDataArray_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::quad_control::trajDataArray_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6800fddd4bf810897f1a5feb2ba6d4b2";
  }

  static const char* value(const  ::quad_control::trajDataArray_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x6800fddd4bf81089ULL;
  static const uint64_t static_value2 = 0x7f1a5feb2ba6d4b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::quad_control::trajDataArray_<ContainerAllocator> > {
  static const char* value() 
  {
    return "quad_control/trajDataArray";
  }

  static const char* value(const  ::quad_control::trajDataArray_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::quad_control::trajDataArray_<ContainerAllocator> > {
  static const char* value() 
  {
    return "trajData[] trajectory\n\
================================================================================\n\
MSG: quad_control/trajData\n\
float32 time\n\
float32 position\n\
float32 velocity\n\
float32 acceleration\n\
";
  }

  static const char* value(const  ::quad_control::trajDataArray_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::quad_control::trajDataArray_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.trajectory);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct trajDataArray_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quad_control::trajDataArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::quad_control::trajDataArray_<ContainerAllocator> & v) 
  {
    s << indent << "trajectory[]" << std::endl;
    for (size_t i = 0; i < v.trajectory.size(); ++i)
    {
      s << indent << "  trajectory[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::quad_control::trajData_<ContainerAllocator> >::stream(s, indent + "    ", v.trajectory[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // QUAD_CONTROL_MESSAGE_TRAJDATAARRAY_H
