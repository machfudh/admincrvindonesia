<?php
require APPPATH . '/libraries/REST_Controller.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Kembalikan
 *
 * @author user
 */
class Kembalikan extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->library('helper');
        $this->load->model('accountmodel');
        $this->load->model('authmodel');
    }

    function index_post() {

        $clientid = $this->post('clientid');
        if (empty($clientid))
            $clientid = 0;

        $clientid = $this->helper->clearInt($clientid);

        if ($clientid != CLIENT_ID) {

            $this->helpel->printError(ERROR_UNKNOWN, CLIENT_ID + " Error client Id.");
        }
        
        $clientid = $this->post('clientid');
        if (empty($clientid))
            $clientid = 0;

        $clientid = $this->helper->clearInt($clientid);

        if ($clientid != CLIENT_ID) {
            $this->helper->printError(ERROR_UNKNOWN, CLIENT_ID + " Error client Id.");
        }


        $arre = array();
        $result = array("status" => 200, "message" => FALSE, "data" => $arre);
        $data = $this->db->get('v_statret');
        $datares = $data->result();

        if ($data->num_rows() > 0) {
            foreach ($datares as $row) {
                $tempdata = array(
                    "id_statret" => $row->id_statret,
                    "ket" => $row->ket
                );
//			while($row = $datares->fetch_assoc()){
                array_push($arre, $tempdata);
            }
        }

        $result = array("status" => 200, "message" => TRUE, "data" => $arre);
        $this->authmodel->show_response($result);
            
    }
}
