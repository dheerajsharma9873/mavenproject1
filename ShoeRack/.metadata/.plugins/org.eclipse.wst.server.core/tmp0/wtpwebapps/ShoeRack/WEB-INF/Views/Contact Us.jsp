<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Resources/css/Contact Us.css">
<%@ include file="header.jsp" %>
</head>
<style>
body{background-color:#ABD5FF ;             //Image Credit to www.icanread.asia 
            }
</style>
<div class="container">
            <div class="row">
                <div class="col-sm-6 col-centered">
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                            <h1>Contact Us</h1>
                        </div>
                    <form action="" method="POST">
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user blue"></i></span>
                                <input type="text" name="InputName" placeholder="Name" class="form-control" autofocus="autofocus" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope blue"></i></span>
                                <input type="email" name="InputEmail" placeholder="Email" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone blue"></i></span>
                                <input type="number" name="InputCno" placeholder="Phone" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-comment blue"></i></span>
                                <textarea name="InputMessage" rows="6" class="form-control" type="text" required></textarea>
                            </div>
                        </div>
                        <div class="">
                        <button type="submit" class="btn btn-info pull-right">Send <span class="glyphicon glyphicon-send"></span></button>
                            <button type="reset" value="Reset" name="reset" class="btn">Reset <span class="glyphicon glyphicon-refresh"></span></button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
        
        
</body>
</html>