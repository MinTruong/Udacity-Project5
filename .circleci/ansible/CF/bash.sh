a=0
while [ $a -lt 10 ]
do
    if [  $(aws cloudformation describe-stacks --stack-name poject4Network --query Stacks[*].StackStatus --output text) == "CREATE_COMPLETE" ]
    then
        echo "faild"
        sleep 10
    else
        echo $(aws cloudformation describe-stacks --stack-name poject4Network --query Stacks[*].StackStatus --output text)
        a=10
        echo $a
    fi
done