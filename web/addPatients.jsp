<%--
  Created by IntelliJ IDEA.
  User: mayliu
  Date: 2018/4/13
  Time: 下午7:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<!--增加病人信息页面-->
<head>
    <title>增加病人</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">住院管理</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> 管理员 <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <!--<li>
                                <a tabindex="-1" href="#">Profile</a>
                            </li>-->
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="login.html">Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3" id="sidebar">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">

                <li>
                    <a href="Patient.html"><i class="icon-chevron-right"></i>查看病人列表</a>
                </li>
                <li class="active">
                    <a href="AddPatient.html"><i class="icon-chevron-right"></i>增加住院病人</a>
                </li>
                <li>
                    <a href="AddBed.html"><i class="icon-chevron-right"></i>增加医院床位</a>
                </li>
                <li>
                    <a href="checkview1.html"><i class="icon-chevron-right"></i>查看病人处方</a>
                </li>
                <li >
                    <a href="delete.html"><i class="icon-chevron-right"></i>病人出院办理</a>
                </li>
                <li>
                    <a href="index.html"><i class="icon-chevron-right"></i>切换用户</a>
                </li>

            </ul>
        </div>
        <!--/span-->
        <div class="span9" id="content">
            <!-- morris stacked chart -->
            <div class="row-fluid">

            </div>

            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left">填写病人信息</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <s:form class="form-horizontal" action="patient_in" method="post" theme="simple">
                                <fieldset>
                                    <!--<legend>Form Components</legend>-->
                                    <!--- input获取病人信息-->
                                    <div class="control-group">
                                        <label class="control-label">姓名</label>
                                        <div class="controls">
                                            <input type="text" name="name" />
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" >性别</label>
                                        <div class="controls">
                                            <!--- input获取病人信息-->
                                            <input type="radio" id="sexRadiobox1" name="sex" value="0"/>男
                                            <input type="radio" id="sexRadiobox2" name="sex" value="1"/>女
                                            <!--<label class="uniform">
                                                <input class="uniform_on" type="checkbox" id="optionsCheckbox" value="option1">
                                                Option one is this and that&mdash;be sure to include why it's great
                                            </label>-->
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" >年龄</label>
                                        <div class="controls">
                                            <!--- input获取病人信息-->
                                            <input type="text" pattern="[1-9][0-9]*" required class="span6" name="age" >
                                            <p class="help-block">(请不要输入数字以外的字符)</p>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" >电话号码</label>
                                        <div class="controls">
                                            <!--- input获取病人信息-->
                                            <input type="text" class="span6" name="tel" required pattern="^\d{11}$">
                                            <p class="help-block">(请输入11位数字)</p>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" >紧急联系电话</label>
                                        <div class="controls">
                                            <!--- input获取病人信息-->
                                            <input type="text" class="span6" name="ftel" required pattern="[0-9]*">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <!--这个组件可选择日期-->
                                    <div class="control-group">
                                        <label class="control-label" for="date01">入院日期</label>
                                        <div class="controls">
                                            <input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="select01">科室</label>
                                        <div class="controls">
                                            <s:select id="select01" name="type" list="#{'1':'妇产科','2':'骨科','3':'心内科','4':'内科','5':'神经科'}" headerKey="" headerValue="请选择所挂科室"></s:select>
                                        </div>
                                    </div>


                                    <div class="control-group">
                                        <label class="control-label">病情及建议</label>
                                        <div class="controls">
                                            <textarea class="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px" name="prescription" ></textarea>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <input type="submit" class="btn btn-primary"></input>

                                        <input type="reset" class="btn"></input>
                                    </div>
                                </fieldset>
                            </s:form>

                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>

            <!-- wizard -->
            <div class="row-fluid section">

            </div>
            <!-- /wizard -->

            <!-- validation -->
            <div class="row-fluid">

            </div>
            <!-- /validation -->


        </div>
    </div>
    <hr>

</div>
<!--/.fluid-container-->
<link href="vendors/datepicker.css" rel="stylesheet" media="screen">
<link href="vendors/uniform.default.css" rel="stylesheet" media="screen">
<link href="vendors/chosen.min.css" rel="stylesheet" media="screen">

<link href="vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">

<script src="vendors/jquery-1.9.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="vendors/jquery.uniform.min.js"></script>
<script src="vendors/chosen.jquery.min.js"></script>
<script src="vendors/bootstrap-datepicker.js"></script>

<script src="vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
<script src="vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

<script src="vendors/wizard/jquery.bootstrap.wizard.min.js"></script>

<script type="text/javascript" src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="assets/form-validation.js"></script>

<script src="assets/scripts.js"></script>
<script>

    jQuery(document).ready(function() {
        FormValidation.init();
    });


    $(function() {
        $(".datepicker").datepicker();
        $(".uniform_on").uniform();
        $(".chzn-select").chosen();
        $('.textarea').wysihtml5();

        $('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index+1;
                var $percent = ($current/$total) * 100;
                $('#rootwizard').find('.bar').css({width:$percent+'%'});
                // If it's the last tab then hide the last button and show the finish instead
                if($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show();
                    $('#rootwizard').find('.pager .finish').removeClass('disabled');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }
            }});
        $('#rootwizard .finish').click(function() {
            alert('Finished!, Starting over!');
            $('#rootwizard').find("a[href*='tab1']").trigger('click');
        });
    });
</script>
</body>

</html>
