# Go bindings for MelissaData address validation lib file
(SWIG-generated)

## Package installation:
* Dependencies:
  * MelissaData address validation lib (libmdAddr.so) and header files (mdAddr.h, mdEnums.h)
* Installation:
  * CGO_CFLAGS="-IMELISSADATA_ADDRESS_HEADER_FOLDER" CGO_LDFLAGS="-LMELISSADATA_ADDRESS_LIB_FOLDER -lmdAddr" go install

## Usage:
* Dependencies:
  * MelissaData address validation lib (libmdAddr.so)
  * LD_LIBRARY_PATH=MELISSADATA_ADDRESS_LIB_FOLDER
* Notes:
  * Set dependencies and use like any other go package


## Re-generate (if necessary):
* Dependencies:
  * MelissaData address validation lib (libmdAddr.so) and header files (mdAddr.h, mdEnums.h)
  * SWIG software
* Steps:
  * Install MelissaData validation software (or just the .so and .h files)
  * Install SWIG
  * Generate the bindings using SWIG:
    * swig -IMELISSADATA_ADDRESS_HEADER_FOLDER -go -cgo -intgosize 64 addressbindings.i
      * - this generates .go and _wrap.c files
  * Remove unsupported bindings from the generated files:
    * mdAddrGetSOAAAExpiryDate
    * mdAddrGetSOASoftwareInfo
    * mdAddrGetSOATotalRecords
    * mdAddrGetSOAAAPercentage
 