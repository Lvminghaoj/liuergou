<?php
    include 'connect.php';
    //添加购物车
    //传入id,颜色，数量
    $good_id = isset($_POST['good_id']) ? $_POST['good_id'] : '';
    $color = isset($_POST['color']) ? $_POST['color'] : '';
    $names = isset($_POST['names']) ? $_POST['names'] : '';
    $price = isset($_POST['price']) ? $_POST['price'] : '';
    $num = isset($_POST['num']) ? $_POST['num'] : '';
    $img1 = isset($_POST['img1']) ? $_POST['img1'] : '';
    // echo $good_id;
    //查询购物车是否含有该商品
    $sql = "SELECT * FROM car WHERE good_id = '$good_id' AND color = '$color'";
    $res = $conn->query($sql);
    $row = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($row);
    if($row){
        //购物车已经存在，则改变原有数量
        $sql2 = "UPDATE car SET num=num+$num*1 WHERE good_id='$good_id' AND color = '$color'";
        // echo $sql2;
        $res2 = $conn->query($sql2);
    }else{
        //不存在，插入一条新的商品信息
        $sql3 = "INSERT INTO car(good_id,names,img1,price,num,color) values('$good_id','$names','$img1','$price','$num','$color')";
        // echo 0;
        $res2 = $conn->query($sql3);
        // echo $sql3;
    }
    if($res2){
        echo 0;
    }else{
        echo 1;
    }
?>