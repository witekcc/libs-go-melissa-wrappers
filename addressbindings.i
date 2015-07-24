%module addressbindings
 %{
 /* Includes the header in the wrapper code */
 #include "mdAddr.h"
 #include "mdEnums.h"
 %}
 
 /* Parse the header file to generate wrappers */
 %include "mdAddr.h"
 %include "mdEnums.h"