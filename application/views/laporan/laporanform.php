<?php  
     /**  Nama File : transaksiform.php **/ 

     echo ! empty($h2_title) ? '<h2>' . $h2_title . '</h2>': '';  
     echo ! empty($message) ? '<p class="message">' . $message . '</p>': ''; 

     $flashmessage = $this->session->flashdata('message'); 
     echo ! empty($flashmessage) ? '<p class="message">' . $flashmessage . '</p>': ''; 
?> 

    <div class="centercontent"> 
 
    <div id="contentwrapper" class="contentwrapper"> 
    <div class="contenttitle2"> 
         <h3><?php echo  $title_pro; ?></h3>
    </div> 
    <form  class="stdform stdform2" name="uploadform" method="post" action="<?php echo $form_action; ?>" enctype="multipart/form-data" > 
    <p> 
        <label>Silakan Pilih File Excel :</label> 
        <span class="field"> 
        <input type="file" class="longinput" name="userfile"  /> 
    </span> 
    </p> 
    

    <p class="stdformbutton">
       <button class="submit radius2">Upload</button> 
       <input type="reset" class="reset radius2" value="Reset Button" /> 
    </p> 
    </form> 

  </div> 

</div> 
