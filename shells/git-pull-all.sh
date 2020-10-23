for i in */.git;
do (
    echo \#\# $i;
    cd $i/..;
    git pull 2>&1 | grep -i --color 'error\|$';
);
done
