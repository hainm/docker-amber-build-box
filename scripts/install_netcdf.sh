# curl -fsS -o netcdf-4.3.3.zip ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4.3.3.zip
# unzip netcdf-4.3.3.zip
# cd netcdf-4.3.3
# ./configure --enable-static --disable-netcdf-4 --prefix=/usr/local/ --disable-dap
# make -r install;

#!/bin/sh

netcdf=ftp://ftp.pbone.net/mirror/ftp5.gwdg.de/pub/opensuse/repositories/home:/marcindulak/CentOS_CentOS-5/x86_64/netcdf4-4.1.2-23.1.x86_64.rpm
netcdfdev=ftp://ftp.pbone.net/mirror/ftp5.gwdg.de/pub/opensuse/repositories/home:/marcindulak/CentOS_CentOS-5/x86_64/netcdf4-devel-4.1.2-23.1.x86_64.rpm
wget $netcdf
wget $netcdfdev
rpm -i ./netcdf4-4.1.2-23.1.x86_64.rpm
rpm -i ./netcdf4-devel-4.1.2-23.1.x86_64.rpm
