<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Error 404 | <?php echo $this->config->item('company_name'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <!-- Theme Config Js -->
    <script src="<?php echo base_url(); ?>assets/js/hyper-config.js"></script>
    <!-- App css -->
    <link href="<?php echo base_url(); ?>assets/css/app-saas.min.css" rel="stylesheet" type="text/css" id="app-style" />
    <!-- Icons css -->
    <link href="<?php echo base_url(); ?>assets/css/icons.min.css" rel="stylesheet" type="text/css" />
  </head>
  <body class="authentication-bg">

    <div class="account-pages pt-2 pt-sm-5 pb-4 pb-sm-5">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xxl-4 col-lg-5">
            <div class="card">
              <!-- Logo -->
              <div class="card-header py-4 text-center bg-primary">
                <a href="<?php echo base_url(); ?>">
                  <span><img src="<?php echo base_url(); ?>assets/images/logos/<?php echo $this->config->item('company_logo'); ?>" alt="<?php echo $this->config->item('company_name'); ?>"></span>
                </a>
              </div>

              <div class="card-body p-4">
                  <div class="text-center">
                      <h1 class="text-error">4<i class="mdi mdi-emoticon-sad"></i>4</h1>
                      <h4 class="text-uppercase text-danger mt-3">Page Not Found</h4>
                      <p class="text-muted mt-3">It's looking like you may have taken a wrong turn. Don't worry... it
                          happens to the best of us. Here's a
                          little tip that might help you get back on track.</p>

                      <a class="btn btn-info mt-3" href="<?php echo base_url(); ?>"><i class="mdi mdi-reply"></i> Return Home</a>
                  </div>
              </div> <!-- end card-body-->
            </div>
            <!-- end card -->
          </div> <!-- end col -->
        </div>
        <!-- end row -->
      </div>
      <!-- end container -->
    </div>
    <!-- end page -->

    <footer class="footer footer-alt">
      <script>document.write(new Date().getFullYear())</script> ©&nbsp;<a href="https://omas-mfg.com/" target="_blank"><?php echo $this->config->item('company_name'); ?></a>
    </footer>
    <!-- Vendor js -->
    <script src="<?php echo base_url(); ?>assets/js/vendor.min.js"></script>
    <!-- App js -->
    <script src="<?php echo base_url(); ?>assets/js/app.min.js"></script>
  </body>
</html>