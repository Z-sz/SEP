<%--
  Created by IntelliJ IDEA.
  User: AlphaGoMK
  Date: 1/5/2019
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="./bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet">

    <%--datetimepicker--%>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            </br>
            <span class="badge badge-default">欢迎,<s:property value="#session.USER_NAME"/></span>
            </br>
            <ul class="nav flex-column nav-pills">
                <li class="nav-item" >

                    <a class="nav-link disabled" href="javascript:void(0);" onclick="showCourse();">
                        课程信息
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="javascript:void(0);" onclick="createCourse()">
                        创建课程
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="javascript:void(0)" onclick="setHome()" id="setHomeBtn">设置作业</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="javascript:void(0)" id="setGrpBtn">设置小组配置</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="javascript:void(0)" id="setStuBtn">设置学生名单</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="javascript:void(0)" id="checkHomeBtn">批改作业</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="javascript:void(0)" id="showList">查看学生列表</a>
                </li>
            </ul>
        </div>
        <!-- <div class="col-md-1">
            <button class='btn btn-default'>
                back
            </button>
        </div> -->
        <div class="col-md-10" id="showHomework" style="display: block;">
            <button class="btn btn-primary">
                返回
            </button>
            <!-- <button class="btn btn-default">
                提交
            </button> -->
            </br>
            </br>
            <table class="table table-striped">
                <thead>
                <tr class="row">
                    <th class="col-1">作业名称</th>
                    <th class="col-4">作业链接</th>
                    <th class="col-2">作业提交时间</th>
                    <th class="col-2">作业提交人</th>
                    <th class="col-1">作业成绩</th>
                </tr>
                </thead>

                <tbody>
                <tr class="row">
                    <s:iterator value="grpList" var="GroupInfo">
                        <td class="col-1">
                            <s:property value="hwName"/>
                            1
                        </td>
                        <td class="col-4">
                            <s:property value="hwLinnk"/>
                            2
                        </td>
                        <td class="col-2">
                            <s:property value="hwSubmitT"/>
                            3
                        </td>
                        <td class="col-2">
                            <s:property value="hwSubmitP"/>
                            4
                        </td>
                        <td class="col-1">
                            <s:property value="hwScore"/>
                            5
                        </td>

                    </s:iterator>
                </tr>
                </tbody>
            </table>
            <button class="btn btn-primary">
                提交
            </button>
        </div>
        

    </div>
    <s:debug/>
</div>



<%--<link href="{% static 'bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css' %}" rel="stylesheet">--%>

<%--<script src="{% static 'bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js' %}"></script>--%>
<%--<script src="{% static 'bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js' %}"></script>--%>




</body>
</html>