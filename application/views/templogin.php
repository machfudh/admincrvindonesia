<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <?php $this->load->view('header'); ?>
    </head>

    <body>

        <div class="am-signin-wrapper">
      <div class="am-signin-box">
        <div class="row no-gutters">
          <div class="col-lg-5">
            <div>
              <h2>CR-V Club</h2>
              <p></p>
              <p></p>

              <hr>
              <p>Indonesia<br> <a href="page-signup.html"></a></p>
            </div>
          </div>
          <div class="col-lg-7">
            <h5 class="tx-gray-800 mg-b-25">Login</h5>
            
            <?php echo validation_errors(); ?>
            <form name="loginform" id="selectForm" method="post" action="<?php echo $form_action; ?>">

            <div class="form-group">
              <label class="form-control-label">login name:</label>
              <input type="text" name="username" class="form-control" placeholder="Enter your email address" />
            </div><!-- form-group -->

            <div class="form-group">
              <label class="form-control-label">Password:</label>
              <input type="password" name="password" class="form-control" placeholder="Enter your password"/>
            </div><!-- form-group -->
            
            <div class="form-group mg-b-20"><a href="">Reset password</a></div>

            <button type="submit" class="btn btn-block">Sign In</button>
          </form>
          </div><!-- col-7 -->
        </div><!-- row -->
        <p class="tx-center tx-white-5 tx-12 mg-t-15">Copyright &copy; 2018. All Rights Reserved. Card Delivery Application by nproject</p>
      </div><!-- signin-box -->
    </div><!-- am-signin-wrapper -->
    </body>
    <!-- END BODY -->
</html>