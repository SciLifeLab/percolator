

 #              libxsd/xsd/cxx/version.hxx
find_path(XSD_INCLUDE_DIR NAMES  xsd/cxx/version.hxx  PATH_SUFFIXES libxsd PATHS 
  "[HKEY_CURRENT_USER]\\software\\xsd\\include]"
  "[HKEY_CURRENT_USER]\\xsd\\include]"
  $ENV{XSDDIR}/include
  $ENV{XSDDIR}
  $ENV{XSDDIR}/libxsd
  /usr/include
  /usr/local/include
)
#  PATH_SUFFIXES libxsd
find_program(XSD_EXECUTABLE 
   NAMES xsd xsdcxx
   PATHS "[HKEY_CURRENT_USER]\\xsd\\bin"
    $ENV{XSDDIR}/bin 
   /usr/bin
   /usr/local/bin
)

#find_library(XSD_LIBRARIES NAMES libxsd.a PATH_SUFFIXES libxsd/xsd )

if(NOT XSD_INCLUDE_DIR )
    message(FATAL_ERROR  "xsd include dir not found" )  
endif()

# if(NOT XSD_LIBRARIES )
#    message(FATAL_ERROR  "libxsd not found" )  
# endif()

if( NOT XSD_EXECUTABLE)
    message(FATAL_ERROR  "xsd binary not found" )  
endif()
include_directories(${XSD_INCLUDE_DIR})