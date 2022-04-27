// Generated by gencpp from file project6/OddEvenCheckRequest.msg
// DO NOT EDIT!


#ifndef PROJECT6_MESSAGE_ODDEVENCHECKREQUEST_H
#define PROJECT6_MESSAGE_ODDEVENCHECKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace project6
{
template <class ContainerAllocator>
struct OddEvenCheckRequest_
{
  typedef OddEvenCheckRequest_<ContainerAllocator> Type;

  OddEvenCheckRequest_()
    : number(0)  {
    }
  OddEvenCheckRequest_(const ContainerAllocator& _alloc)
    : number(0)  {
  (void)_alloc;
    }



   typedef int32_t _number_type;
  _number_type number;





  typedef boost::shared_ptr< ::project6::OddEvenCheckRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::project6::OddEvenCheckRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OddEvenCheckRequest_

typedef ::project6::OddEvenCheckRequest_<std::allocator<void> > OddEvenCheckRequest;

typedef boost::shared_ptr< ::project6::OddEvenCheckRequest > OddEvenCheckRequestPtr;
typedef boost::shared_ptr< ::project6::OddEvenCheckRequest const> OddEvenCheckRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::project6::OddEvenCheckRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::project6::OddEvenCheckRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::project6::OddEvenCheckRequest_<ContainerAllocator1> & lhs, const ::project6::OddEvenCheckRequest_<ContainerAllocator2> & rhs)
{
  return lhs.number == rhs.number;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::project6::OddEvenCheckRequest_<ContainerAllocator1> & lhs, const ::project6::OddEvenCheckRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace project6

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::project6::OddEvenCheckRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::project6::OddEvenCheckRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::project6::OddEvenCheckRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2474488a3908093ec1307bdd5b35815e";
  }

  static const char* value(const ::project6::OddEvenCheckRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2474488a3908093eULL;
  static const uint64_t static_value2 = 0xc1307bdd5b35815eULL;
};

template<class ContainerAllocator>
struct DataType< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "project6/OddEvenCheckRequest";
  }

  static const char* value(const ::project6::OddEvenCheckRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 number\n"
;
  }

  static const char* value(const ::project6::OddEvenCheckRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.number);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OddEvenCheckRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::project6::OddEvenCheckRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::project6::OddEvenCheckRequest_<ContainerAllocator>& v)
  {
    s << indent << "number: ";
    Printer<int32_t>::stream(s, indent + "  ", v.number);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROJECT6_MESSAGE_ODDEVENCHECKREQUEST_H
