### Upload a file to Azure storage
**Pricing:** Free

Enter the following in the build task:

**Source** - Directory where file resides. 
Example: $(Build.SourcesDirectory)

**File** - Name of file.
Example: abc.txt

**Destination** - URL of Azure Fileshare or Blob storage.
Example: https://myaccount.file.core.windows.net/myfileshare/

**Key** - Key for the specified storage location.
Secret build variable is recommended: https://www.visualstudio.com/en-us/docs/build/define/variables#secret-variables
Example: $(SecretKey)

**Requirements**

1. Windows build agents only. Linux and Mac OSs not supported.
