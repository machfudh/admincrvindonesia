<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>CR-V Club Indonesia</title>
    
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
    <script type="text/javascript">
        function goFurther(){
            if (document.getElementById("chkAgree").checked == true)
                document.getElementById("btnSubmit").disabled = false;
            else
                document.getElementById("btnSubmit").disabled = true;
        }
        
        function validasi(){
        var lcnama=document.forms["regisform"]["lcnama"].value;
        var numbers=/^[0-9]+$/;
        if (lcnama==null || lcnama==""){
          alert("Nama tidak boleh kosong !");
          return false;
        };
        if (lcnama.length < 3 ){
          alert("Nama tidak boleh kurang dari 3 huruf !");
          return false;
        };
        var lcemail=document.forms["regisform"]["lcemail"].value;
        if (lcemail==null || lcemail==""){
          alert("Email tidak boleh kosong !");
          return false;
        };
        var atpos=lcemail.indexOf("@");
        var dotpos=lcemail.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=lcemail.length)
        {
            alert("Isi Email dengan Benar");
            return false;
        }
       
        var lchpwa=document.forms["regisform"]["lchpwa"].value;
        if (lchpwa==null || lchpwa==""){
          alert("Nomor HP tidak boleh kosong !");
          return false;
        }else if(lchpwa.length < 10 ){
          alert("Isi HP dengan benar !");
          return false;
        }else if(!(/^\S{3,}$/.test(lchpwa))){
          alert("Nomor HP tidak boleh ada spasi !");
          return false;
        }
        var lcpropinsi=document.forms["regisform"]["lcpropinsi"].value;
        if (lcpropinsi==null || lcpropinsi=="0"){
          alert("Silahkan Propinsi Domisilih anda  !");
          return false;
        };
        var lckabupaten=document.forms["regisform"]["lckabupaten"].value;
        if (lckabupaten==null || lckabupaten=="0"){
          alert("Silahkan Kabupaten Domisilih anda  !");
          return false;
        };
        var lcalamat=document.forms["regisform"]["lcalamat"].value;
        if (lcalamat==null || lcalamat==""){
          alert("Alamat tidak boleh kosong !");
          return false;
        };
       var lckodepos=document.forms["regisform"]["lckodepos"].value;
        if (lckodepos==null || lckodepos==""){
          alert("Kode Pos tidak boleh kosong !");
          return false;
        };
        if (lckodepos.length != 5 ){
          alert("Kode Pos Harus 5 Anggka !");
          return false;
        };
        var lcnopolisi=document.forms["regisform"]["lcnopolisi"].value;
        if (lcnopolisi==null || lcnopolisi==""){
          alert("Nomor Polisi tidak boleh kosong !");
          return false;
        }else if(!(/^\S{3,}$/.test(lcnopolisi))){
          alert("Nomor Polisi tidak boleh ada sepasi !");
          return false;
        }
        var lcnorangka=document.forms["regisform"]["lcnorangka"].value;
        if (lcnorangka==null || lcnorangka==""){
          alert("Nomor Rangka tidak boleh kosong !");
          return false;
        }else if(lcnorangka.length < 5 ){
          alert("Isi Nomor Rangka dengan benar !");
          return false;
        }else if(!(/^\S{3,}$/.test(lcnorangka))){
          alert("Nomor Rangka tidak boleh ada spasi !");
          return false;
        }
        
        var lcnomesin=document.forms["regisform"]["lcnomesin"].value;
        if (lcnomesin==null || lcnomesin==""){
          alert("Nomor Mesin tidak boleh kosong !");
          return false;
        }else if(lcnomesin.length < 5 ){
          alert("Isi Nomor Mesin dengan benar !");
          return false;
        }else if(!(/^\S{3,}$/.test(lcnomesin))){
          alert("Nomor Mesin tidak boleh ada spasi !");
          return false;
        }
        var ktp=document.forms["regisform"]["ktp"].value;
        if (ktp==null || ktp==""){
          alert("Silahkan upload photo SIM !");
          return false;
        };
        var stnk=document.forms["regisform"]["stnk"].value;
        if (stnk==null || stnk==""){
          alert("Silahkan upload photo STNK !");
          return false;
        };
        var photo=document.forms["regisform"]["photo"].value;
        if (photo==null || photo==""){
          alert("Silahkan upload photo anda bersama mobil ada !");
          return false;
        };
        
     }
</script>
        
  </head>

    <body>
     
        

        <?php $this->load->view('navigation_barreg'); ?>
        
      
            <div class="am-pagebody">
                <?php $this->load->view($main_view); ?>
            </div><!-- am-pagebody -->
            <div class="am-footer">
                <span>Copyright &copy; 2018. All Rights Reserved. Kurir by nproject</span>
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