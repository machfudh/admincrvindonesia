<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Accountmodel
 *
 * @author user
 */
class Accountmodel extends CI_Model {

    function __construct()   {
        parent::__construct();
    }
    
    var $dataUsers = 'kurir';
    var $dataorderan = 'orderbar';

    public function setLastActive($accountId) {
        $time = time();
        $dataAccount = array('last_authorize' => $time);
        $this->db->where('id_kurir', $accountId);
        $this->db->update($this->dataUsers, $dataAccount);
    }
    
    public function isEmailExists($user_email) {
        $this->db->where('email', $user_email);
        $this->db->limit(1);
        $stmt = $this->db->get($this->dataUsers);

        if ($stmt->num_rows() > 0) {
            return true;
        }

        return false;
    }
    
    public function getLastId($email) {
        $this->db->select('id');
        $this->db->where('email', $email);
        $this->db->limit(1);
        return $this->db->get($this->dataUsers);
    }
    
     public function isLoginExists($username) {
        $this->db->where('login', $username);
        $this->db->limit(1);
        $stmt = $this->db->get($this->dataUsers);

        if ($stmt->num_rows() > 0) {

            return true;
        }

        return false;
    }
    
    public function signin($username, $password) {
        $access_data = array('error' => true);

        $username = $this->helper->clearText($username);
        $password = $this->helper->clearText($password);

        $stmt = $this->getSaltId($username)->num_rows();

        if ($stmt > 0) {

            $row = $this->getSaltId($username)->row();
            $enscript1 = "Use3RSAG!";
            $enscript2 = "!Machfudh...?";
            $pass = md5($enscript1 . md5($password) . $enscript2);
            $passw_hash = md5(md5($pass) . $row->salt);

            $stmt2 = $this->getLoginPass($username, $passw_hash)->num_rows();

            if ($stmt2 > 0) {

                $row2 = $this->getLoginPass($username, $passw_hash)->row();

                $access_data = array("error" => false,
                    "error_code" => ERROR_SUCCESS,
                    "accountid" => $row2->id_kurir);
            }
        }

        return $access_data;
    }
    
    public function getSaltId($username) {
        $this->db->select('salt');
        $this->db->where('userlogin', $username);
        $this->db->limit(1);
        return $this->db->get($this->dataUsers);
    }

    public function getLoginPass($username, $password) {
        $this->db->select('id_kurir');
        $this->db->where('userlogin', $username);
        $this->db->where('userpass', $password);
        $this->db->limit(1);
        return $this->db->get($this->dataUsers);
    }
    
    public function getkurir($accountId) {
        $result = array("error" => true,
            "error_code" => ERROR_ACCOUNT_ID);

        $row = $this->getDataId($accountId)->row();
        $stmt_row = $this->getDataId($accountId)->num_rows();

        if ($stmt_row > 0) {

            $notifications_count = 0;
         
//            $notifications_count = $this->notifymodel->getNewCount($accountId, $row->last_notify_view);


            $online = false;

            $current_time = time();

            if ($row->last_authorize != 0 && $row->last_authorize > ($current_time - 15 * 60)) {

                $online = true;
            }

            $result = array(
                "id_kurir" => $row->id_kurir,
                "fullname" => stripcslashes($row->nama),
                "alamat" => $row->alamat,
                "telpon" => $row->telp1." / ".$row->telp2,
                "nokend" => $row->nomor_kend,
                "email" => $row->userlogin,
                "area" => $row->kode_area,
                "kode" => $row->kode_kurir,
                "token" => $row->token,
                "photokurir" => $row->photokurir,
                "online" => $online);

        }
        return $result;
    }
    
    
     public function getDataId($accountId) {
        $this->db->where('id_kurir', $accountId);
        return $this->db->get($this->dataUsers);
    }
    
    
    public function getorder($accountId,$produk,$latitut,$longti,$ambilkode,$kirimkode) {
        $result = array("error" => true,
            "error_code" => ERROR_ACCOUNT_ID);

        $row = $this->getDataId($accountId)->row();
        $stmt_row = $this->getDataId($accountId)->num_rows();

        if ($stmt_row > 0) {

            $notifications_count = 0;
         
//            $notifications_count = $this->notifymodel->getNewCount($accountId, $row->last_notify_view);


            $online = false;

            $current_time = time();

            if ($row->last_authorize != 0 && $row->last_authorize > ($current_time - 15 * 60)) {

                $online = true;
            }
            
            $this->createorderandr($accountId,$produk,$latitut,$longti,$ambilkode,$kirimkode);
            
            $result = array("error" => false,
                "error_code" => ERROR_SUCCESS,
                "id" => $row->id,
                "regtime" => $row->regtime,
                "ip_addr" => $row->ip_addr,
                "fullname" => stripcslashes($row->fullname),
                "email" => $row->email,
                "online" => $online,
                "notificationsCount" => $notifications_count);

        }
        return $result;
    }
    
    private function createorderandr($accountId,$produk,$latitut,$longti,$kodeambil,$kodekirim){
        $result = array("error" => true);
        
        $currentTime = time();
        $ip_addr = $this->helper->ip_addr();
        
        //cek status
        $nourut = $this->getnomourutawal($produk);
        
        $orderAccount = array(
            'id_produk' => $produk,
            'id_customer' => $accountId,
            'latitut' => $latitut,
            'longti' => $longti,
            'kodeambil' => $kodeambil,
            'kodekirim' => $kodekirim,
            'id_status' => $nourut,
            'ordtime' => $currentTime,
            'ip_addr' => $ip_addr);
         $stmt = $this->db->insert($this->dataorderan, $orderAccount);

        return $result;
        
        
    }
    
    private function getnomourutawal($produk){
        
        $this->db->select('id_kat');
        $this->db->where('id', $produk);
        $this->db->limit(1);
        
        $id_kat = $this->db->get('produk')->num_rows();
        
        if($id_kat > 0){
            
            $this->db->select('id');
            $this->db->where('id_kat', $id_kat);
            $this->db->where('urutproses', 1);
            $this->db->limit(1);
            
//            $nourut =  $this->db->get('produk');
            
            return $this->db->get('status')->row()->id;
            
        }
        
        
       return null; 
        
    }
    
    public function getPenerima(){
        return $this->db->get('v_statusshipp');
    }
    
    
    public function logout($accountId, $accessToken)
    {
        $accountId = $this->helper->clearInt($accountId);

        $accessToken = $this->helper->clearText($accessToken);
//        $accessToken = helper::escapeText($accessToken);
        $currentTime = time();
        
        $dataToken = array('waktu' => $currentTime,
                           'kegiatan' => 'logout',
                           'catatan' => 'Logout from android' );
        
        

        $this->db->where('id_kurir', $accountId);
        $this->db->where('token', $accessToken);
        $this->db->update('kurirlog',$dataToken);
        
    }
    
}
