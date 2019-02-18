<?php    
    include 'connect.php'; 
    $APItype=isset($_POST['APItype']) ? $_POST['APItype'] : '';
    //加入购物车
    // if($APItype=='addOrderCar'){
    //     $gid=isset($_POST['gid']) ? $_POST['gid'] : '';
    //     $color=isset($_POST['color']) ? $_POST['color'] : '';
    //     $shuliang=isset($_POST['shuliang']) ? $_POST['shuliang'] : '';
    //     $bianhao=isset($_POST['bianhao']) ? $_POST['bianhao'] : '';
    //     $danjia=isset($_POST['danjia']) ? $_POST['danjia'] : '';
    //     $img1=isset($_POST['img1']) ? $_POST['img1'] : '';
    //     $sql="INSERT INTO car(id,color,shuliang,xiaoji,bianhao,danjia,img1) VALUES('$gid','$color','$shuliang','$bianhao','$danjia','$img1')"; 
    // }  
 
    //购物车信息输出 
    if($APItype=='orderCar'){
        // $page=isset($_POST['page']) ? $_POST['page'] : '';
        // $qty=isset($_POST['qty']) ? $_POST['qty'] : '';
        // $index=($page-1)*$qty;
        $sql="SELECT * FROM car ";
    }
    //购物数量变化
    if($APItype=='orderCarNum'){
        $good_id = isset($_POST['good_id']) ? $_POST['good_id'] : '';
        $num = isset($_POST['num']) ? $_POST['num'] : '';
        $sql="UPDATE car SET num='$num' where good_id='$good_id'"; 
    }
    //购物车删除数据
    if($APItype=='orderCarDelete'){
        $good_id = isset($_POST['good_id']) ? $_POST['good_id'] : '';
        $sql="DELETE FROM car WHERE good_id='$good_id'"; 
    }
    //购物车删除全部
    if($APItype=='orderCarDeleteAll'){
        $good_id = isset($_POST['good_id']) ? $_POST['good_id'] : '';
        $sql="DELETE FROM car";
    }
    $res=$conn->query($sql); 
    if($APItype=='orderCar'){
        $row=$res->fetch_all(MYSQLI_ASSOC);//只要内容部分
        // $datalist=array(
        //     'list'=>$row,
        //     'page'=>$page,
        //     'qty'=>$qty
        // );
        echo json_encode($row,JSON_UNESCAPED_UNICODE);
        $res->close();//关闭结果集
    }else{
        if($res){
            echo 1;
        }else{
            echo 0;
        }
    }
    //关闭数据库
    $conn->close();
?>