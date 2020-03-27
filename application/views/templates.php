<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <?php $this->load->view('header'); ?>
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
                <span>Copyright &copy; 2018 All Rights Reserved. Kurir by nproject</span>
                <!--<span>Created by: ThemePixels, Inc.</span>-->
            </div><!-- am-footer -->
        </div><!-- am-mainpanel -->
        <?php $this->load->view('footer'); ?>
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