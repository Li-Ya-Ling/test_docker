FROM r-base
    RUN  R -e "install.packages('getopt',repos='http://mirrors.tuna.tsinghua.edu.cn/CRAN/')" 
    RUN  R -e "install.packages('gtable',repos='http://mirrors.tuna.tsinghua.edu.cn/CRAN/')"
    RUN  R -e "install.packages('scales',repos='http://mirrors.tuna.tsinghua.edu.cn/CRAN/')"
    RUN  R -e "install.packages('RColorBrewer',repos='http://mirrors.tuna.tsinghua.edu.cn/CRAN/')"
    RUN  R -e "install.packages('NbClust',repos='http://mirrors.tuna.tsinghua.edu.cn/CRAN/')"
    RUN  R -e "install.packages('cluster',repos='http://mirrors.tuna.tsinghua.edu.cn/CRAN/')"
    RUN  wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.2.26/ncbi-blast-2.2.26+-x64-linux.tar.gz
    RUN  tar -zxf ncbi-blast-2.2.26+-x64-linux.tar.gz
    RUN  mv ./ncbi-blast-2.2.26+/bin/* /usr/local/bin
    RUN  rm -rf ./ncbi-blast-2.2.26+ ./ncbi-blast-2.2.26+-x64-linux.tar.gz
    COPY test_docker  /opt
    RUN  echo "export PATH=/opt/bin/:$PATH" >> ~/.bashrc
