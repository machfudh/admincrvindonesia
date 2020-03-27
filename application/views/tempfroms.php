<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>CRV Indonesia</title>
    
    <meta content="Nusa Pro Media Solusi" name="description" />
    <meta content="Moh Machfudh" name="author" />

    <!-- vendor css -->
    <link href="<?php echo base_url() . 'assets/lib/font-awesome/css/font-awesome.css'; ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/Ionicons/css/ionicons.css'; ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/perfect-scrollbar/css/perfect-scrollbar.css'; ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/jquery-toggles/toggles-full.css'; ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/highlightjs/github.css'; ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/select2/css/select2.min.css'; ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/spectrum/spectrum.css'; ?>" rel="stylesheet">

    <!-- Amanda CSS -->
    <link rel="stylesheet" href="<?php echo base_url() . 'assets/css/amanda.css'; ?>">
    
    <link rel="shortcut icon" href="<?php echo base_url() .'uploads/crvlogo.ico';?>">
   
    <script>
    function cboxkab(id) {
        $.ajax({
            type:"POST",
            url: "<?php echo site_url('kabupaten/nilkabupaten');?>",
            data:"prov="+id,
            success: function(data) {
                $("#kabup").html(data);
            },
            beforesend: function(){
                $("#kabup").html('<strong>Loading....please wait!</strong>');
            },
            error: function(XMLHttpRequest){
              alert(XMLHttpRequest.responseText);
            }
        })
    };
                
    function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
    }
    
    function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result)
                        .width(150);
                       
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
       
      function readURL1(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah1')
                        .attr('src', e.target.result)
                        .width(150);
                       
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
        
       function readURL2(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah2')
                        .attr('src', e.target.result)
                        .width(150);
                       
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
        
      function readURL3(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah3')
                        .attr('src', e.target.result)
                        .width(150);
                       
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
        
        function readURL4(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah4')
                        .attr('src', e.target.result)
                        .width(150);
                       
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    
    function readURL5(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah5')
                        .attr('src', e.target.result)
                        .width(150);
                       
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
        
  </head>

    <body>
     <?php if(! $this->session->userdata('validated'))
                    redirect('login');
        ?>

     <?php  function do_logout(){
             $this->session->sess_destroy();
                 redirect('login');
             }
        ?>

        <?php $this->load->view('navigation_bar'); ?>
        
        
        <?php $this->load->view('sidebar_menu'); ?>
        

        <div class="am-pagetitle">
            <h5 class="am-title"><?php echo $titlemenu ?></h5>
           
        </div><!-- am-pagetitle -->

        <div class="am-mainpanel">
            <div class="am-pagebody">
                <?php $this->load->view($main_view); ?>
            </div><!-- am-pagebody -->
            <div class="am-footer">
                <span>Copyright &copy; 2018. All Rights Reserved. Kurir by nproject</span>
                <!--<span>Created by: Moh..</span>-->
            </div><!-- am-footer -->
        </div><!-- am-mainpanel -->
         
    <script src="<?php echo base_url() . 'assets/lib/jquery/jquery.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/popper.js/popper.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/bootstrap/bootstrap.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/jquery-ui/jquery-ui.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/perfect-scrollbar/js/perfect-scrollbar.jquery.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/jquery-toggles/toggles.min.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/highlightjs/highlight.pack.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/select2/js/select2.min.js'; ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/spectrum/spectrum.js'; ?>"></script>


    <script src="<?php echo base_url() . 'assets/js/amanda.js'; ?>"></script>
    
    <script type="text/javascript">
        function fromSubmit(){
        jQuery.ajax({
            type:"POST",
            url: "<?php echo site_url('scankurir/simpendata');?>",
            data: $('#getBarcode').serialize(),
            success:function(response) {
                jQuery("#success").html(response);
             }
            });
            var from=document.getElementById('getBarcode').reset();
            return false
        } 
    
    </script>   
    <script>
      $(function(){

        'use strict';

        $('.select2').select2({
          minimumResultsForSearch: Infinity
        });

        // Select2 by showing the search
        $('.select2-show-search').select2({
          minimumResultsForSearch: ''
        });

        // Select2 with tagging support
        $('.select2-tag').select2({
          tags: true,
          tokenSeparators: [',', ' ']
        });

        // Datepicker
        $('.fc-datepicker').datepicker({
          showOtherMonths: true,
          selectOtherMonths: true
        });

        $('#datepickerNoOfMonths').datepicker({
          showOtherMonths: true,
          selectOtherMonths: true,
          numberOfMonths: 2
        });

        // Color picker
        $('#colorpicker').spectrum({
          color: '#17A2B8'
        });

        $('#showAlpha').spectrum({
          color: 'rgba(23,162,184,0.5)',
          showAlpha: true
        });

        $('#showPaletteOnly').spectrum({
            showPaletteOnly: true,
            showPalette:true,
            color: '#DC3545',
            palette: [
                ['#1D2939', '#fff', '#0866C6','#23BF08', '#F49917'],
                ['#DC3545', '#17A2B8', '#6610F2', '#fa1e81', '#72e7a6']
            ]
        });

      });
    </script>
    </body>
    <!-- END BODY -->
</html>