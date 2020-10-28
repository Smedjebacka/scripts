for i in */.git;
do (
    echo \#\# $i;
    cd $i/..;
    git branch -r | grep $1;
);
done