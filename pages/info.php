<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../img/smile.ico"/>  
        <title>查询</title>
        <!-- Bootstrap Core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <!-- Custom CSS -->
            <link href="../dist/css/sb-admin-2.css" rel="stylesheet">
            <!-- Custom Fonts -->
            <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
            <script src="../vendor/jquery/jquery.min.js"></script>
            <![endif]-->
        </head>
        <body>
            <div id="wrapper">
                <!-- Navigation -->
               <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">查询平台</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                         <li><a href="#"><i class="fa fa-gear fa-fw"></i>更改密码</a>
                        </li>
                        <li class="divider"></li>
                        <li><a id="rand" href="../index.html"><i class="fa fa-sign-out fa-fw"></i>退出</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="index.html"><i class="fa fa-home fa-fw"></i> 首页</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i>学生信息查询<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="info.php">信息查询</a>
                                </li>
                                <li>
                                    <a href="score.html">成绩查询</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                         <li>
                            <a href="liuyan.html"><i class="fa fa-book fa-fw" aria-hidden="true"></i>留言本</a>
                        </li>
                         <li>
                            <a href="weather.html"><i class="fa fa-location-arrow" aria-hidden="true"></i>&nbsp;&nbsp;Map && Weather</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        
        
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header text-primary">基本信息查询</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            学生基本信息
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form class="form-inline" method="POST">
                                <div class="form-group">
                                    <select class="form-control input-default" name="select">
                                        <option value="xh">按学号</option>
                                        <option value="xm">按姓名</option>
                                        <option value="gender">按性别</option>
                                        <option value="classname">按班级</option>
                                    </select>
                                    <input type="text" class="form-control" placeholder="请输入..." name="look">
                                    <input type="submit" class="btn btn-default btn-success" name="ok" value="查询">
                                    <input type="submit" class="btn btn-default btn-success" name="yes" value="查看全部">
                                    <input id="Excel" type="button" class="btn btn-default btn-success" value="导出Excel">
                                </div>
                            </form>
                        <!--     <script type="text/javascript">
                                var select_value = $("select[name='select']").val();
                                

                            </script> -->
                            <?php
                            
                            
                            echo "
                            <table  class='table table-striped table-bordered table-hover'>
                                <thead>
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>班级</th>
                                    </tr>
                                </thead>
                                <tbody>";
                                    
                                    $mysqli = new Mysqli('127.0.0.1','andy','','test','3306');
                                    if($mysqli->connect_errno){
                                    die("连接失败");
                                    }
                                    $mysqli->query('set names utf8');
                                    //$select_value="<script>document.write(select_value);</script>";
                                       
                                        if(isset($_POST["ok"])){
                                            
                                            $sql = "select * from classone where {$_POST['select']} = 
                                            '{$_POST["look"]}'";
                                           
                                            $result = $mysqli->query($sql);
                                            while($row = $result->fetch_array()){
                                                echo "<tr>
                                                    <td>{$row['xh']}</td>
                                                    <td>{$row['xm']}</td>
                                                    <td>{$row['gender']}</td>
                                                    <td>{$row['classname']}</td>
                                                </tr>";
                                            }
                                           
                                    }else if(isset($_POST["yes"])){
                                             $sql = "select * from classone";
                                             $result = $mysqli->query($sql);
                                                while($row = $result->fetch_array()){
                                                    echo "<tr>
                                                        <td>{$row['xh']}</td>
                                                        <td>{$row['xm']}</td>
                                                        <td>{$row['gender']}</td>
                                                        <td>{$row['classname']}</td>
                                                    </tr>";
                                                }


                                        }

                                     echo "</tbody></table>";

                               
                          
                                
                              
                                
                                ?>
                                <!-- /.table-responsive -->
                                
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="../vendor/jquery/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="../dist/js/sb-admin-2.js"></script>
        <script src="../vendor/metisMenu/metisMenu.min.js"></script>
        <script src="../layer/layer.js"></script>
        <script src="../js/checkStu.js"></script>
    </body>
</html>