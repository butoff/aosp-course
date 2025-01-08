IMAGE=grapheneos

usage()
{
    echo 'Usage: build.sh [-f]' 1>&2
    exit 1
}

if [ $# -gt 1 ]
then
    usage
fi

if [ $# -eq 1 ]
then
    if [ $1 = "-f" ]
    then
        force=true
    else
        usage
    fi
fi

if [ -n "$(docker image ls -q $IMAGE)" ]
then
    if [ "$force" = true ]
    then
        docker rmi -f $IMAGE
    else
        echo "Image '$IMAGE' already exists. Launch with '-f' flag to rebuild." 1>&2
        exit
    fi
fi

docker build --build-arg userid=$(id -u) --build-arg groupid=$(id -g) --build-arg username=$(id -un) -t $IMAGE .
