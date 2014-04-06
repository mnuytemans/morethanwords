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

    <!-- Bootstrap Datapicker -->
    <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/datepicker.css" rel="stylesheet">



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
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
        <h1>Create a message for a loved one</h1>
      </div>
    <form role="form" action="listMessages.jsp" method="POST" >
      <input type="hidden" name="newmessage" value="1" />
     
      <div class="row">
        <div class="form-group">
          <label for="email_to">To</label>
          <input name="recipient" type="email" class="form-control" id="email_to" placeholder="Enter email">
        </div>
        <div class="form-group" id="scheduledate">
          <label for="schedule_date">Schedule Date</label>
          <input name="deliverydate">
        </div>
        <div class="form-group">
          <label for="conents">Message</label>
          <textarea name="message" class="form-control" rows="15"></textarea>
        </div>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>

    

    </div><!-- /.container -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Datapicker Bootstrap JS -->
    <script src="js/bootstrap-datepicker.js"></script>
    <script>
      $('#scheduledate input').datepicker({
      
      });
    </script>

  </body>
</html>