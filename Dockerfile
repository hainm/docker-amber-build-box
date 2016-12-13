FROM quay.io/pypa/manylinux1_x86_64
RUN yum update -y
RUN yum install -y \
            csh \
            flex \
            gcc \
            patch \
            zlib-devel \
            bzip2-devel \
            libXt-devel \
            libXext-devel \
            libXdmcp-devel

# miniconda3
ADD scripts/install_miniconda.sh /root/
RUN cd /root/ && sh install_miniconda.sh
ENV PATH=/root/miniconda3/bin:$PATH
RUN rm /root/install_miniconda.sh

# openmpi
RUN yum install -y openmpi-devel
ENV PATH=$PATH:/usr/lib/openmpi/1.4-gcc/bin

# netcdf
ADD scripts/install_netcdf.sh /root/
RUN cd /root && sh install_netcdf.sh
RUN rm /root/install_netcdf.sh

# lapack, blas
RUN yum install -y lapack-devel blas-devel
