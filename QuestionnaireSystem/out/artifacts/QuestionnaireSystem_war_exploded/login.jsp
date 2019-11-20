<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        body{
            background: url("img/regist.jpg") no-repeat center;
        }
        .rg_layout{
            width: 900px;
            height: 500px;
            /*border: 8px solid #EEEEEE;*/
            /*background-color: white;*/
            margin: auto;
            margin-top: 15px;
        }

        .rg_top{
            /*border: 1px solid red;*/
            margin-top: 200px;
            margin-left: 310px;
        }
        .rg_top>p:first-child{
            font-size: 40px;
            margin: 15px;
            text-shadow: 5px 5px 5px black, 0px 0px 2px black;
            color: #FFD026;
        }
        .rg_center{
            /*border: 1px solid red;*/
            margin-left: 250px;
            margin-top: 30px;
            width: 450px;
        }
        .td_left{
            width: 100px;
            text-align: right;
            height: 45px;
        }
        .td_right{
            padding-left:50px ;
        }
        #username,#password,#role{
            width: 251px;
            height: 32px;
            border: 1px solid #A6A6A6;
            border-radius: 5px;
            padding-left: 10px;
        }
        #btn_sub1,#btn_sub2{
            width: 80px;
            height: 30px;
            background-color: #FFD026;
            /*border: 0px solid #FFD026;*/
        }
    </style>
</head>
<body>

<div class="rg_layout">
    <div class="rg_top">
        <p><i>问 卷 调 研 系 统</i></p>
    </div>

    <div class="rg_center">
        <div class="rg_form">
            <form name="form" action=""  method="post">
                <table>
                    <tr>
                        <td class="td_left" ><label for="username">用 户 名</label></td>
                        <td class="td_right"><input type="text" name="username" id="username" placeholder="请输入用户名"></td>
                    </tr>

                    <tr>
                        <td class="td_left" ><label for="password">密&nbsp;&nbsp;&nbsp;码</label></td>
                        <td class="td_right"><input type="password" name="password" id="password" placeholder="请输入密码"></td>
                    </tr>
                    <tr>
                        <td class="td_left">用户角色</td>
                        <td class="td_right">
                            <select name="role" id="role">
                                <option value="1">调研用户</option>
                                <option value="2">管理员</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <div style="text-align: center;margin-top: 20px;">
                    <input type="submit" value="登 录" id="btn_sub1" onclick="judgefunction()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value="用户注册" id="btn_sub2" onclick="window.location='${pageContext.request.contextPath}/register.jsp'"/>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
<script type="text/javascript">
    function judgefunction() {
        var num = document.form.role.value;
        if(num == 1){
            document.form.action="${pageContext.request.contextPath}/userLoginServlet";
        }else {
            document.form.action="${pageContext.request.contextPath}/adminLoginServlet";
        }
    }

</script>

</html>