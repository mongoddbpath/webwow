
        $("#login").click(function(){  
            var username=$("#username").val();  
            var password=$("#password").val();  
            alert(username);
            // if(username!=""&&password!=""){  
            //     $.ajax({  
            //         type:"POST",  
            //         url:"../../../php/userLogin.php",  
            //         dataType:"JSON",  
            //         data:{  
            //             "username":username,  
            //             "password":password,  
            //         },   
            //         success:function(data){  
            //             // alert(data);
            //             switch(data){  
            //                 case 1://普通用户  
            //                     // $.cookie("user",username);  
            //                     // $.cookie("limit",0);  
            //                     window.location.href="../pages/index.html";  
            //                     break;  
            //                 case 2://管理员用户  
            //                     $.cookie("user",username);  
            //                     $.cookie("limit",1);  
            //                     window.location.href="../tpages/index.html";  
            //                     break;  
            //                 case 3://密码错误  
            //                     alert("密码错误！");  
            //                     break;  
            //                 case 4://用户不存在  
            //                     alert("该用户不存在！");  
            //                     break;  
            //             }  
                          
            //         }  
            //     })  
            // }else{  
            //     alert("请检查您的输入！");  
            // }  
        });
        
        alert('data');
    