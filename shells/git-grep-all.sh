# first arg: string or regex pattern
# second arg, optional: git grep modifiers, eg "-i" for case-insensitive
for i in */.git;
do (
    echo \#\# $i; cd $i/..; git grep $2 $1;
    );
done
