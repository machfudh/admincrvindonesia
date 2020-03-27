<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Login
 *
 * @author user
 */
class Login extends CI_Controller {
    function __construct() {
        parent::__construct();
//        if ($this->session->userdata('username') == null) {
//            redirect('login');
//        }
        $this->load->model("authmodel");
    }
    
    public function index()
	{
           $data['form_action'] = site_url('login/process');
            $this->load->view('templogin',$data);
	}
        
       function process(){
        // Load the model
        // $this->load->model('loginmodel');
        // Validate the login can login
        $result = $this->authmodel->validate();
        // Now we verify the result
         
//         echo "<br/> udah bisa login .....:".$result;
        if(! $result){
            // If login did not validate, then show them login page again
            $msg = '<font color=red>Invalid loginname and/or password.</font><br />';
            $this->index($msg);
        }
        //if($this->session->userdata('access') == '257'){
            // If login did validate,
            // Send them to members area
//            echo "udah bisa login ......";
            redirect('welcome');
    //    }
    }
    
    function do_logout(){
    $this->session->sess_destroy();
     redirect('');
    } 
 
}
