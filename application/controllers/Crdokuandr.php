<?php
require APPPATH . '/libraries/REST_Controller.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Crdokuandr
 *
 * @author user
 */
class Crdokuandr extends REST_Controller {
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

        $token = $this->post('token');
        if (empty($token))
            $token = '';

        $cari = $this->post('cari');
        if (empty($cari))
            $cari = '';
        
        
        $clientid = $this->helper->clearInt($clientid);

        if ($clientid != CLIENT_ID) {
            $result = array("status" => 404, "message" => FALSE);
            $this->authmodel->show_response($result);
            exit;
        }

//        $mTanggal = strtotime($tanggal);
        $getidfromtoken = $this->authmodel->tokentoid($token);
        $message = FALSE;
        $arre = array();       
        
        if ($getidfromtoken != 0 && $cari != "") {
//            $message =  "okeh dah ada token nya ... !";
            $this->db->where('id_kurir',$getidfromtoken);
            $this->db->where('id_statusshipp',1);
            $this->db->like('seqno',$cari);
            $dataRe = $this->db->get('v_barang');
                
            $dataReport = $dataRe->result();
            $dataNum = $dataRe->num_rows();
            $message = TRUE;
            if($dataNum > 0){
               foreach ($dataReport as $row) {
                $lcwaktu_diterima = " ";
                $lcwaktu_dikembalikan = " ";        
                if ($row->waktu_diterima != 0){
                    $lcwaktu_diterima = date("d-m-Y H:i:s", $row->waktu_diterima);
                }
                if ($row->waktu_dikembalikan != 0){
                    $lcwaktu_dikembalikan = date("d-m-Y H:i:s", $row->waktu_dikembalikan);
                }
                $tempdata = array(
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
                array_push($arre, $tempdata);
            }
                
            }
        $result = array("status" => 200, "message" => TRUE, "record" => $dataNum,"dokumen" => $arre);
        }else{
        $result = array("status" => 200, "message" => FALSE, "dokumen" => $arre);   
        }
        
        $this->authmodel->show_response($result);
    }
}
