<html>
<head>
<title>My Form</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>



 <div class="container">

    <div class="well"> <h1>Classe de validação de formulários</h1></div>

   <?php echo form_open('myForm'); ?>
   <h4>Usuário</h4>
   <?php echo form_error('username'); ?>
   <input type="text" class="form-control" name="username" value="<?php echo set_value('username'); ?>" size="50" />

   <h4>Senha</h4>
   <?php echo form_error('password'); ?>
   <input type="password" class="form-control" name="password" value="<?php echo set_value('password'); ?>" size="50" />

   <h4>Confirmar Senha</h4>
   <?php echo form_error('passconf'); ?>
   <input type="password" class="form-control" name="passconf" value="<?php echo set_value('passconf'); ?>" size="50" />

   <h4>Email</h4>
   <?php echo form_error('email'); ?>
   <input type="text" class="form-control" name="email" value="<?php echo set_value('email'); ?>" size="50" />


   <hr>
   <div><button type="submit" class="btn btn-primary">Enviar</button></div>

   </form>
</div>





</body>
</html>
