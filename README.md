
docker build -t docker.io/dal0s/ide:centos7.9-xfce-compiler -f Dockerfile.centos7.xfce.compiler .
docker run -dt --privileged=true -v /scratch/wks:/wks:rw -v /deps:/deps:shared -p 33890:3389 docker.io/dal0s/ide:centos7.9-xfce-compiler user ps yes
docker save docker.io/dal0s/ide:centos7.9-xfce-compiler -o /scratch/wks/trans/centos7_9-xfce-compiler.tar

docker run -dt --privileged=true -v /scratch/wks:/wks:rw -v /deps:/deps:shared -p 33891:3389 docker.io/centos:7 bash

docker push docker.io/dal0s/ide:centos7.9-xfce-compiler



docker build -t docker.io/dal0s/ide:centos6.6-xfce-compiler -f Dockerfile.centos6.xfce.compiler .
docker run -dt --privileged=true -v /scratch/wks:/wks:rw -v /deps:/deps:shared -p 33890:3389 docker.io/dal0s/ide:centos6.6-xfce-compiler user ps yes
docker save docker.io/dal0s/ide:centos6.6-xfce-compiler -o /scratch/wks/trans/centos6_6-xfce-compiler.tar

docker run -it --privileged=true -v /scratch/wks:/wks:rw -v /deps:/deps:shared -p 33890:3389 --entrypoint /bin/bash docker.io/dal0s/ide:centos6.6-xfce-compiler

docker run -dt --privileged=true -v /scratch/wks:/wks:rw -v /deps:/deps:shared -p 33890:3389 docker.io/centos:6.6 bash

docker push docker.io/dal0s/ide:centos6.6-xfce-compiler