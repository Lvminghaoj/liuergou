<?php
    //连接数据库 
    include 'connect.php';  
    $APItype=isset($_POST['APItype'])?$_POST['APItype']:'';
    //验证用户名
    if($APItype=='uname'){
        $name=isset($_POST['username']) ? $_POST['username'] : '';   
        $sql="SELECT * FROM red WHERE phone='$name'";
        $res=$conn->query($sql);//返回结果集
        // var_dump($res);
        if($res->num_rows>0){
            echo 0;//数据库存在
        }else{
            echo 1;//数据库不存在
        }
        $res->close();//关闭结果集
    }
    //注册
    if($APItype=='reg'){
        $name=isset($_POST['username']) ? $_POST['username'] : '';
        $psw=isset($_POST['password']) ? $_POST['password'] : '';
        $sql="INSERT INTO red(phone,password) VALUES('$name','$psw')"; 
        // echo $sql;
        $res=$conn->query($sql);//返回布尔值 
        if($res){
            echo 1;//注册成功
        }else{
            echo 0;
        } 
    }
    //登录
    if($APItype=='login'){
        $name=isset($_POST['username']) ? $_POST['username'] : '';
        $psw=isset($_POST['password']) ? $_POST['password'] : '';
        $sql="SELECT * FROM red WHERE phone='$name' AND password='$psw'";
        $res=$conn->query($sql);//返回结果集
        if($res->num_rows>0){
            echo 1;//可以登录
        }else{
            echo 0;
        }
        $res->close();//关闭结果集
    }
    //关闭数据库
    $conn->close();   
?>