<?php  
    session_start();
    $mysqli = new Mysqli('127.0.0.1','root','','web','3306');
            if($mysqli->connect_errno){
            die("连接失败");
            }
    $mysqli->query('set names utf8'); 
    // session_start();  
    $name = $_POST['username'];  
    $password=$_POST['password'];  
    $check = $_POST['check'];
    $checkto = $_POST['checkto'];
    if(!$check){
        $check = $checkto;
    }
    $result = $mysqli->query("select * from classone where xh= '{$name}'");
        if($check == 'teacher'){
                    if($name == 2017030628 && $password == "teacher"){
                        $_SESSION['xh'] = $name;    //老师的Session
                        echo 2;     //  管理员界面
                    }else if($name == 2017030628 && $password != "teacher") {
                        echo 5;     //  老师密码错误
                    }else if($name != 2017030628){
                        echo 6;     //   没有该老师用户
                    }
                }else if($check == 'student'){
                     if($row=mysqli_fetch_array($result)){  
                     if($row['xh'] == $password){
                      $_SESSION['stuxh'] = $row['xh'];
                      $_SESSION['stuxm'] = $row['xm'];
                      $_SESSION['stuge'] = $row['gender'];
                    echo 1;     //  学生界面
                }   else if($row['xh'] != $password){
                    echo 3;     //学生密码错误
                }

    }
                else{
                    echo 4;     //该学生用户不存在
                }

        }



?>