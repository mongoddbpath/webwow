$("#login").click(function() {

  //解决Chrome的兼容性问题,因为Chrome不支持Jquery获取radio.value的方法
  function getValue() {
    // method 1   
    var radio = document.getElementsByName("kind");
    for (i = 0; i < radio.length; i++) {
      if (radio[i].checked) {
        return (radio[i].value);
      }
    }
  }

  var checkto = getValue();
  // alert(checkto);

  var username = $("#username").val();
  var password = $("#password").val();
  var check = $('input[name="kind"]:checked').val(); //Chrome无法识别
  // alert(username);

  if (username == "" || password == "") {
    layer.alert('请检查您的输入！', {
      icon: 5
    });
  } else if (IsNum(username) == false) {
    layer.alert('您填的账号不是数字', {
      icon: 5
    });
  } else if (IsZNum(username) == false) {
    layer.alert('您填的账号不是10位数字', {
      icon: 5
    });
  } else if (IsRight(password) == false) {
    layer.alert('您填的密码中包含非法字符', {
      icon: 5
    });
  } else {
    $.ajax({
      type: "POST",
      url: "../php/userLogin.php",
      dataType: "JSON",
      data: {
        "username": username,
        "password": password,
        "check": check,
        "checkto": checkto,
      },
      success: function(data) {
        // alert(data);
        switch (data) {
          case 1: //普通用户  
            window.location.href = "../pages/index.html";
            break;
          case 2: //管理员用户  
            window.location.href = "../tpages/index.html";
            break;
          case 3: //学生密码错误  
            layer.alert('密码错误！', {
              icon: 0
            });
            break;
          case 4: //用户不存在  
            layer.alert('该学生用户不存在！', {
              icon: 5
            });
            break;
          case 5: //老师密码错误
            layer.alert('密码错误!', {
              icon: 0
            });
            break;
          case 6:
            layer.alert('该教师用户不存在！', {
              icon: 5
            });
            break;
        }

      }
    })
  }
});

//正则表达式
//检验是否匹配10个数字
function IsZNum(s) {
  if (s != null) {
    var r, re;
    re = /\d{10}/i;
    r = s.match(re);
    return (r == s) ? true : false;
  }
  return false;
}

//检验是否匹配数字
function IsNum(s) {
  if (s != null && s != "") {
    return !isNaN(s);
  }
  return false;
}

//检验密码中是否包含非法字符
function IsRight(s) {
  if (s != null) {
    var r, re;
    re = /^[A-Za-z0-9]+$/;
    r = s.match(re);
    return (r == s) ? true : false;
  }
  return false;
}