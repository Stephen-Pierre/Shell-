demoFun(){
    echo "我已经想好了一个1到100之间的数字，我们一起来猜吧！！"
    num=$((RANDOM %100+1))
    echo "请输入你猜的数字："
    read guess
    flag=Y
    while [ $flag = "Y" ]
    do
        if [ $guess -lt $num ]
        then
            echo "你输入的数字太小了，再输一个试试看！"
            read guess
        elif [ $guess -gt $num ]
        then
            echo "你输入的数字偏大了，再输一个试试看！"
            read guess
        else
            echo "恭喜你猜对啦！！游戏结束！！"
            let "flag=N"
        fi
    done
}

echo "=====  欢迎登陆猜数字游戏  ====="
demoFun
