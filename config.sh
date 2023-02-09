read -p 'mirror source (default, tuna, ustc, aliyun): ' mirror
case $mirror in
tuna)
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
    pip config set global.trusted-host pypi.tuna.tsinghua.edu.cn
;;
ustc)
    pip config set global.index-url https://pypi.mirrors.ustc.edu.cn/simple
    pip config set global.trusted-host pypi.mirrors.ustc.edu.cn
;;
aliyun)
    pip config set global.index-url https://mirrors.aliyun.com/pypi/simple
    pip config set global.trusted-host mirrors.aliyun.com
;;
*)
    pip config unset global.index-url
    pip config unset global.trusted-host
;;
esac
read -p 'proxy: ' proxy
if [ $proxy ]
then
    pip config set global.proxy $proxy
else
    pip config unset global.proxy
fi
