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
             
  </head>

    <body>
     
        

        <?php $this->load->view('navigation_barreg'); ?>
        
        <br/>
      
            <div class="am-pagebody">
                <?php $this->load->view($main_view); ?>
            </div><!-- am-pagebody -->
            <div class="am-footer">
                <span>Copyright &copy; 2020. All Rights Reserved. CR-V Club Indonesia</span>
                <!--<span>Created by: Moh..</span>-->
            </div><!-- am-footer -->
      
         
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