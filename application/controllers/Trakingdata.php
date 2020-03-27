<?php
require APPPATH . '/libraries/REST_Controller.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Trakingdata
 *
 * @author user
 */
class Trakingdata extends REST_Controller {

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
        
        $sharedkey = $this->post('sharedkey');
        if (empty($sharedkey))
            $sharedkey = '';
        
        $segno = $this->post('segno');
        if (empty($segno))
            $segno = '';
        
        $clientid = $this->helper->clearInt($clientid);
//        $sharedkey = $this->helper->clearText($sharedkey);
//        $segno = $this->helper->clearText($segno);

//        if ($clientid != CLIENT_ID) {
//            $this->helper->printError(ERROR_UNKNOWN, CLIENT_ID + " Error client Id.");
//        }

        if($sharedkey == "BANK@d0e5bec1734e5cd99003dfc36a107e09" ){
        $arre = array();
        $this->db->where("seqno",$segno);
        $data = $this->db->get('v_barang');
        $datares = $data->result();

        if ($data->num_rows() > 0) {
            foreach ($datares as $row) {
                $lcwaktu_diterima = " ";
                $lcwaktu_dikembalikan = " ";        
                if ($row->waktu_diterima != 0){
                    $lcwaktu_diterima = date("d-m-Y H:i:s", $row->waktu_diterima);
                }
                if ($row->waktu_dikembalikan != 0){
                    $lcwaktu_dikembalikan = date("d-m-Y H:i:s", $row->waktu_dikembalikan);
                }
                $tempdata = array(
                    "status" => true,
                    "id_barang" => $row->id_barang,
                    "seqno" => $row->seqno,
                    "nama" => $row->nama,
                    "alamat1" => $row->alamat1,
                    "alamat2" => $row->alamat2,
                    "alamat3" => $row->alamat3,
                    "kota" => $row->kota,
                    "type" => $row->type,
                    "serv_type" => $row->serv_type,
                    "harga" => $row->harga,
                    "id_statusshipp" => $row->id_statusshipp,
                    "id_stati" => $row->id_stati,
                    "id_statret" => $row->id_statret,
                    "sts_penerima" => $row->statiket,
                    "penerima" => $row->penerima,
                    "sts_tolak" => $row->statretket,
                    "catatan" => $row->catatan,
                    "waktu_ambil" =>$row->waktu_ambil != "" ? date("d-m-Y H:i:s", $row->waktu_ambil):"",
                    "waktu_diterima" =>$lcwaktu_diterima,
                    "waktu_dikembalikan"=>$lcwaktu_dikembalikan
                );
//			while($row = $datares->fetch_assoc()){
//                array_push($arre, $tempdata);
            }
        }else{
            $tempdata = array(
              "status" => false,
                    "ket" => "SegNo Not Found");  
        }

//        $result = array("status" => 200, "message" => TRUE, "record" => $data->num_rows(),"dokumen" => $arre);
        }else{
          $tempdata = array(
              "status" => false,
                    "ket" => "Shared Key Error");  
            
//        $result = array("status" => 200, "message" => FALSE, "dokumen" => $arre);   
        }
        
        $this->authmodel->show_response($tempdata);
    }
}
