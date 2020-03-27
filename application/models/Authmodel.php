<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Oauthmodel
 *
 * @author user
 */
class Authmodel extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->library('helper');
        $this->load->model('accountmodel');
    }

    var $dataAccess = 'kurirlog';
    var $dataKurir = 'kurir';
    var $_content_type = "application/json";
    var $_code = 200;

    public function authorize($accountId, $accessToken) {

        $result = array("error" => true,
            "error_code" => ERROR_UNKNOWN);

        $accountId = $this->helper->clearInt($accountId);

        $accessToken = $this->helper->clearText($accessToken);
//        $accessToken = helper::escapeText($accessToken);

        $this->db->where('id_kurir', $accountId);
        $this->db->where('token', $accessToken);
        $stmt = $this->db->get($this->dataAccess);

        echo "isi dari record :" . $stmt->num_rows();
        if ($stmt->num_rows() < 1) {

            echo "masuk nsih";
            $result = array('error' => false,
                'error_code' => ERROR_SUCCESS,
                'accesstoken' => $accessToken,
                'accountid' => $accountId);
        }

        return $result;
    }

    public function create($accountId, $clientId = 0) {
        $result = array("error" => true,
            "error_code" => ERROR_UNKNOWN);

        $currentTime = time(); // Current time

        $u_agent = $this->helper->u_agent();
        $ip_addr = $this->helper->ip_addr();

        $salt = $this->generateSalt(10);

        $accessToken = md5(uniqid(rand(), true)) . md5($salt);

        $dataToken = array('id_kurir' => $accountId,
            'token' => $accessToken,
            'client_id' => $clientId,
            'waktu' => $currentTime,
            'kegiatan' => 'login',
            'catatan' => 'Login from android',
            'u_agent' => $u_agent,
            'ip_addr' => $ip_addr);
        $stmt = $this->db->insert($this->dataAccess, $dataToken);

        if ($stmt) {

            $result = array(
                'status' => 200,
                'message' => "Login Kurir",
                'error' => false,
                'error_code' => ERROR_SUCCESS,
                'accesstoken' => $accessToken,
                'accountid' => $accountId);


            $dataKurir = array(
                'token' => $accessToken,
                'last_authorize' => $currentTime);

            $this->db->where('id_kurir', $accountId);
            $this->db->update($this->dataKurir, $dataKurir);
        }

        return $result;
    }

    public function generateSalt($n = 3) {
        $key = '';
        $pattern = '1234567890abcdefghijklmnopqrstuvwxyz.,*_-=+';
        $counter = strlen($pattern) - 1;

        for ($i = 0; $i < $n; $i++) {

            $key .= $pattern{rand(0, $counter)};
        }

        return $key;
    }
    
     public function generatePass($n = 10) {
        $key = '';
        $pattern = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $counter = strlen($pattern) - 1;

        for ($i = 0; $i < $n; $i++) {

            $key .= $pattern{rand(0, $counter)};
        }

        return $key;
    }

    public function validate() {
        // grab user input
        $username = $this->security->xss_clean($this->input->post('username'));
        $password = $this->security->xss_clean($this->input->post('password'));
        if ($password != null ){
        $enscript1 = "MchfudhCRV!";
        $enscript2 = "!OjiFaouji...?";
        $pass = md5($enscript1 . md5($password) . $enscript2);
        // Prep the query
//         echo $password; 
        $this->db->where('userlogin', $username);
        $this->db->where('userpass', $pass);
        $query = $this->db->get('v_user');
        // Let's check if there are any results
        if ($query->num_rows() == 1) {
            // If there is a user, then create session data
            $row = $query->row();
            $data = array(
                'iduserlog' => $row->id_user,
                'nama_user' => $row->nama,
                'email_user' => $row->userlogin,
                'access' => $row->akses,
                'idrool' => $row->idrool,
                'idchapter' => $row->idchapter,
                'validated' => true
            );
            $this->session->set_userdata($data);
            //	$this->session->set_userdata('idAndro',$username . $password); 
//            echo "berhasil login";
            return true;
        }
        }
        // If the previous process did not validate
        // then return false.
//        echo "gagal..     login   :" ;
        return false;
    }

    public function response($data, $status) {
        $this->_code = ($status) ? $status : 200;
        $this->set_headers();
        echo $data;
        exit;
    }

    public function show_response($data) {
        $this->response($this->json($data), 200);
    }

    public function get_list($query) {
        $result = array();
        $r = $this->mysqli->query($query) or die($this->mysqli->error . __LINE__);
        if ($r->num_rows > 0) {
            while ($row = $r->fetch_assoc()) {
                $result[] = $row;
            }
        }
        return $result;
    }

    /* Encode array into JSON */

    public function json($data) {
        if (is_array($data)) {
            return json_encode($data, JSON_NUMERIC_CHECK);
        }
    }

    public function set_headers() {
        header("HTTP/1.1 " . $this->_code . " " . $this->get_status_message());
        header("Content-Type:" . $this->_content_type);
    }

    private function get_status_message() {
        $status = array(
            200 => 'OK',
            201 => 'Created',
            204 => 'No Content',
            404 => 'Not Found',
            406 => 'Not Acceptable',
            401 => 'Unauthorized'
        );
        return ($status[$this->_code]) ? $status[$this->_code] : $status[500];
    }

    public function tokentoid($token) {
        $this->db->where('token', $token);
        $this->db->limit(1);
        $result = $this->db->get($this->dataKurir);
        
        if ($result->num_rows() > 0){
            $idkurir = $result->row()->id_kurir;
        }else {
            $idkurir = 0 ;
        }

        return $idkurir;
    }

    public function insertstatus($id_barang, $id_stati, $id_statret, $latitut, $longtitut, $penerima, $catatan, $sukseskode) {
        if ($sukseskode == 1) {
            $diterima = time();
            $dikembalikan = 0;
            $catatan = "";
            $id_statret = 0;
            $statusshipp = 2;
        } else {
            $diterima = 0;
            $dikembalikan = time();
            $penerima = "";
            $id_stati = 0;
            $statusshipp = 3;
        }
        $isidata = array(
            'id_statusshipp' => $statusshipp,
            'id_stati' => $id_stati,
            'id_statret' => $id_statret,
            'longti' => $longtitut,
            'latitut' => $latitut,
            'penerima' => $penerima,
            'catatan' => $catatan,
            'waktu_diterima' => $diterima,
            'waktu_dikembalikan' => $dikembalikan);

        $this->db->where('id_barang', $id_barang);
        $result = $this->db->update('barang', $isidata);

        return $result;
    }

    public function indonesian_date($timestamp = '', $date_format = 'l, j F Y | H:i', $suffix = '') {
        if (trim($timestamp) == '') {
            $timestamp = time();
        } elseif (!ctype_digit($timestamp)) {
            $timestamp = strtotime($timestamp);
        }
        # remove S (st,nd,rd,th) there are no such things in indonesia :p
        $date_format = preg_replace("/S/", "", $date_format);
        $pattern = array(
            '/Mon[^day]/', '/Tue[^sday]/', '/Wed[^nesday]/', '/Thu[^rsday]/',
            '/Fri[^day]/', '/Sat[^urday]/', '/Sun[^day]/', '/Monday/', '/Tuesday/',
            '/Wednesday/', '/Thursday/', '/Friday/', '/Saturday/', '/Sunday/',
            '/Jan[^uary]/', '/Feb[^ruary]/', '/Mar[^ch]/', '/Apr[^il]/', '/May/',
            '/Jun[^e]/', '/Jul[^y]/', '/Aug[^ust]/', '/Sep[^tember]/', '/Oct[^ober]/',
            '/Nov[^ember]/', '/Dec[^ember]/', '/January/', '/February/', '/March/',
            '/April/', '/June/', '/July/', '/August/', '/September/', '/October/',
            '/November/', '/December/',
        );
        $replace = array('Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Min',
            'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu',
            'Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun', 'Jul', 'Ags', 'Sep', 'Okt', 'Nov', 'Des',
            'Januari', 'Februari', 'Maret', 'April', 'Juni', 'Juli', 'Agustus', 'Sepember',
            'Oktober', 'November', 'Desember',
        );
        $date = date($date_format, $timestamp);
        $date = preg_replace($pattern, $replace, $date);
        $date = "{$date} {$suffix}";
        return $date;
    }

    public function resetpass($idKurir, $newpass) {
        $salt = $this->authmodel->generatePass(10);
        $timeinsert = time();
        $enscript1 = "MchfudhCRV!";
        $enscript2 = "!OjiFaouji...?";
        $password = $newpass;
        $pass = md5($enscript1 . md5($password) . $enscript2);
        $passw_hash = md5(md5($pass) . $salt);
        
        $newkurir = array('userpass' => $passw_hash,'salt' => $salt);            
    
        $this->db->where('id_kurir', $idKurir);
            
        return $this->db->update($this->dataKurir, $newkurir);
        
    }
    
    public function reporttgl($idKurir, $dawal,$akhir) {
        $this->db->where('id_kurir', $idKurir);
        $this->db->where('id_statusshipp',1);
        return $this->db->get('v_barang');
        
        
    }
    
    public function reporttgl2($idKurir, $dawal,$akhir) {
        $accommodation = 'waktu_diterima';
        $this->db->where("$accommodation BETWEEN $dawal AND $akhir");
        $this->db->where('id_kurir', $idKurir);
        $this->db->where('id_statusshipp',2);
        return $this->db->get('v_barang');
    }
    
    public function reporttgl3($idKurir, $dawal,$akhir) {
        $accommodation = 'waktu_dikembalikan';
        $this->db->where("$accommodation BETWEEN $dawal AND $akhir");
        $this->db->where('id_kurir', $idKurir);
        $this->db->where('id_statusshipp',3);
        return $this->db->get('v_barang');
        
//        $this->db->where('id_kurir', $idKurir);
//        $this->db->where('tgl_upload',$tanggal);
//        $this->db->where('id_statusshipp',2);
//        $insuccess = $this->db->get('v_barang');
// 
//        $this->db->where('id_kurir', $idKurir);
//        $this->db->where('tgl_upload',$tanggal);
//        $this->db->where('id_statusshipp',3);
//        $inreturn = $this->db->get('v_barang');
        
    }

}
