<%@page import="sw.mlw.ActionHandler"%>
<%@page import="sw.mlw.MessageDao"%>
<%@page import="sw.mlw.models.Message"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>More than words</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/morethanwords.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  
  
      	<%ActionHandler.getInstance().newMessage(request);%>
      
      
      
      
      <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">More than words</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
      <div class="page-header">
        <h1>Your messages</h1>
      </div>
      <div class="row">
      <%
      List<Message> messages = MessageDao.getInstance().listMessages();
      if (messages.isEmpty()) {%>
      <h2>No messages.</h2>
      <% }else{ 
    	  
        for (Message message: messages){
        %>
        <table class="table">
          <thead>
            <tr>
              <th>Select</th>
              <th>Recipient</th>  
              <th>Delivery Date</th>
              <th>Message</th>
              <th></th>
            </tr>
          </thead>
          <tbody>

          
            <tr>
              <td><input type="checkbox" name="selected" value="<%=message.getId()%>"></td>
              <td><%=message.getRecipient() %></td>
              <td><%=message.getDeliveryDate() %></td>
              <td><%=message.getMessage() %></td>
              <td><a href="editMessage?id=<%=message.getId()%>">Edit</a></td>
            </tr>
            
            
          </tbody>
        <table>
    
    <input type="submit" name="delete" value="delete selected Messages" /> <br/>
    <%}}%>  

    </div><!-- /.container -->
    
    <a href="newMessage.jsp">new Message</a>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

