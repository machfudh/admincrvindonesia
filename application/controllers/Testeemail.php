<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Testeemail
 *
 * @author Mahfud
 */
class Testeemail extends CI_Controller{
    
    
     function index() {
        $this->send_mail("machfudh@gmail.com", "test kirim email aja nich");
    }
    
public function send_mail($email, $message) {
    $this->load->library('mailer');

    $email_penerima = $email;
    $subjek = "Registrasi";
    $message =  "<pra>";
    $message .= "Nama   : Moh. Machfudh <br/>"; 
    $message .= "No Hp  : 09839325892385 <br/>";
    $message .= "Nopung : 235235 <br/><br/><br/><br/>";
    $message .= "cr-v club indonesia ";
    $message .= "</pra>";
    $pesan = $message;
    $attachment = "";
    $content =  $this->load->view('emailtemplate', array('pesan'=>$message), true); // Ambil isi file content.php dan masukan ke variabel $content
        
    $sendmail = array(
      'email_penerima'=>$email_penerima,
      'subjek'=>$subjek,
      'content'=>$content,
      'attachment'=>$attachment
    );
    
    $send = $this->mailer->send($sendmail);

//    if(empty($attachment['name'])){ // Jika tanpa attachment
//      $send = $this->mailer->send($sendmail); // Panggil fungsi send yang ada di librari Mailer
//    }else{ // Jika dengan attachment
//      $send = $this->mailer->send_with_attachment($sendmail); // Panggil fungsi send_with_attachment yang ada di librari Mailer
//    }

    echo "<b>".$send['status']."</b><br />";
    echo $send['message'];
    echo "<br /><a href='".base_url("index.php/email")."'>Kembali ke Form</a>";
  }
  
}
