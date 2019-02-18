<?php
    include 'connect.php';
    $APItype=isset($_POST['APItype']) ? $_POST['APItype'] : '';

       //首页渲染

       if($APItype=='goodli'){
        $sql="SELECT * FROM shouye";
    }
    $sql2='select * from shouye';
    $res2=$conn->query($sql2);
    $rowtotal=$res2->num_rows;//获取结果集里面的num_rows属性，记录的条数


    // 列表页数据降序输出
    //查找相应id在详情页输出
    if($APItype=='goodlistDetail'){
        $id=isset($_POST['id']) ? $_POST['id'] : '';
        $sql="SELECT * FROM liebiao WHERE id='$id'";
    }
    $page=isset($_POST['page']) ? $_POST['page'] : '';
    $qty=isset($_POST['qty']) ? $_POST['qty'] : '';
    $index=($page-1)*$qty;


    //列表页数据正常输出
    // echo $APItype;
    if($APItype=='goodlist'){
        $sql="SELECT * FROM liebiao LIMIT $index,$qty";
    }
    $sql2='select * from liebiao';
    $res2=$conn->query($sql2);
    $rowtotal=$res2->num_rows;//获取结果集里面的num_rows属性，记录的条数

    if($APItype=='goodlistdown'){
        $sql="SELECT * FROM liebiao ORDER BY price DESC LIMIT $index,$qty";
    } 
    //列表页数据升序输出
    if($APItype=='goodlistup'){
        $sql="SELECT * FROM liebiao ORDER BY price LIMIT $index,$qty";
    }
    //列表页数据人气降序输出
    if($APItype=='goodlisthotdown'){
        $sql="SELECT * FROM liebiao ORDER BY xiaoliang DESC LIMIT $index,$qty";
    }
    //列表页数据人气升序输出
    if($APItype=='goodlisthotup'){
        $sql="SELECT * FROM liebiao ORDER BY xiaoliang LIMIT $index,$qty";
    }




    $res=$conn->query($sql); //得到结果集
    $row=$res->fetch_all(MYSQLI_ASSOC);//得到全部内容
    if($APItype=='goodlistDetail'){
        echo json_encode($row,JSON_UNESCAPED_UNICODE);
    }else{
        //关联数组能存储更多数据
        $datalist=array(
            'total'=>$rowtotal,
            'list'=>$row,
            'page'=>$page,
            'qty'=>$qty
        );
        echo json_encode($datalist,JSON_UNESCAPED_UNICODE);
    }
    $res->close();//关闭结果集   
    $conn->close();//关闭数据库
?>