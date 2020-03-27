<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Registrasi
 *
 * @author Mahfud
 */
class Regisulang extends CI_Controller {

    function __construct() {
        parent::__construct();
//        if ($this->session->userdata('username') == null) {
//            redirect('login');
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
        $this->load->model('kabupatenmodel');
        $this->load->model('propinsimodel');
    }

    var $limit = 10;
    var $title = 'Registrasi Ulang';
    var $linkweb = 'member';
    var $titlemenu = 'Master Data';
    var $tabel = 'member';

    function index() {
        $this->resgisulangx();
    }
    
    function resgisulangx(){
        $para2 = 10;
        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['main_view'] = $this->tabel . '/formemail';
        $data['form_action'] = site_url("regisulang/updresgistrasi");
        
//        $this->dump($data['form_action'], true);
       $this->load->view('tempregul', $data);
    }

   function updresgistrasi(){
        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['main_view'] = $this->tabel . '/formregul';
        $data['form_action'] = site_url('regisulang/simpanregUl');

//        $this->dump($data['main_view'], false);
        
        $email = $this->input->post('lcemail');
//        $this->dump($email, false);
        
        $this->db->where('email', $email);
        $tcari = $this->db->get('v_regulang');
        
//        $this->dump($tcari->, false);
        if($tcari->num_rows() > 0){
           $lcDataList = $tcari->row();
           
//            $this->dump($lcDataList->id_member, false);
           
            $data['data']['lcidx'] = $lcDataList->id_member;
            $data['data']['lcnama'] = $lcDataList->nama;
            $data['data']['lcemail'] = $lcDataList->email;
            $data['data']['lchpwa'] = $lcDataList->hpwa;
            $data['data']['lckemeja'] = $lcDataList->kemeja;
            $data['data']['lcpropinsi'] = $lcDataList->prodomisilih;
            $data['data']['lckabupaten'] = $lcDataList->kabdomisilih;
            $data['data']['lctgllahir'] = $lcDataList->tgllahir != "" ? date("d-m-Y", $lcDataList->tgllahir) : "";
            $data['data']['lcalamat'] = $lcDataList->alamat;
            $data['data']['lckodepos'] = $lcDataList->kodepos;
            $data['data']['lcjabatan'] = $lcDataList->idjabatan;
            $data['data']['lcchapter'] = $lcDataList->idchapter;
            $data['data']['lctahununit'] = $lcDataList->idtahununit;
            $data['data']['lckapasitasunit'] = $lcDataList->idkapasitasunit;
            $data['data']['lcwarnaunit'] = $lcDataList->idwarnaunit;
            $data['data']['lcnopolisi'] = $lcDataList->nopolisi;
            $data['data']['lcnorangka'] = $lcDataList->norangka;
            $data['data']['lcnomesin'] = $lcDataList->nomesin;
            $data['data']['lcnopung'] = $lcDataList->nopung;
//            $data['data']['lcktpsim'] = $lcDataList->ktpsim;
//            $data['data']['lcstnk'] = $lcDataList->stnk;
//            $data['data']['lcbuktitransfer'] = $lcDataList->buktitransfer;
//            $data['data']['lcppok'] = $lcDataList->ppok;
            
            $data['listid_kemeja'] = array('s' => 'S',
                'm' => 'M',
                'l' => 'L',
                'xl' => 'XL',
                'xxl' => 'XXL',
                'xxxl' => 'XXXL');

            $propinsi = $this->propinsimodel->allpropinsi()->result();
            $num_row = $this->propinsimodel->allpropinsi()->num_rows();
            if ($num_row > 0) {
                foreach ($propinsi as $row) {
                    $data['listid_propinsi'][$row->kode] = $row->provinsi;
                }
            }

            $kabupaten = $this->kabupatenmodel->allkabupaten()->result();
            $num_row = $this->kabupatenmodel->allkabupaten()->num_rows();
            $data['listkabupaten'][0] = 'All Kab/Kota';
            if ($num_row > 0) {
                foreach ($kabupaten as $row) {
                    $data['listkabupaten'][$row->id] = $row->kabupaten;
                }
            }

            $lsthnunit = $this->db->get('v_thnunit')->result();
            $num_row = $this->db->get('v_thnunit')->num_rows();
//            $data['listid_thnunit'][0] = "All Courier ...";
            if ($num_row > 0) {
                foreach ($lsthnunit as $row) {
                    $data['listid_tahununit'][$row->id_thnunit] = $row->tahun;
                }
            }
            
            $lskpsmesin = $this->db->get('v_kpsmesin')->result();
            $num_row = $this->db->get('v_kpsmesin')->num_rows();
//            $data['listid_thnunit'][0] = "All Courier ...";
            if ($num_row > 0) {
                foreach ($lskpsmesin as $row) {
                    $data['listid_kpsmesin'][$row->id_kpsmesin] = $row->kpsmesin;
                }
            }
            
            $lswarnaunit = $this->db->get('v_warnaunit')->result();
            $num_row = $this->db->get('v_warnaunit')->num_rows();
//            $data['listid_thnunit'][0] = "All Courier ...";
            if ($num_row > 0) {
                foreach ($lswarnaunit as $row) {
                    $data['listid_warnaunit'][$row->id_warnaunit] = $row->warna;
                }
            }
            
            $lschapter = $this->db->get('v_chapter')->result();
            $num_row = $this->db->get('v_chapter')->num_rows();
//            $data['listid_thnunit'][0] = "All Courier ...";
            if ($num_row > 0) {
                foreach ($lschapter as $row) {
                    $data['listid_chapter'][$row->id_chapter] = $row->namachapter."#".$row->provinsi."#".$row->kabupaten ;
                }
            }
            
//            $this->dump($data['data']['lcidx'], true);
            
            $this->load->view('regulfroms', $data);
           
        }else{
             $this->dump($email, false);
        }
        
        
    }
    
    
    function simpanregUl() {
//        $data['menu'] = $this->Callmenu->menu();
        $data['title'] = $this->title;
        $id = $this->input->post('lcidx');
//        $this->dump("nomor id : ".$id, true);
//        if ($para1 == 'save') {
            $salt = $this->authmodel->generatePass(10);
            $timeinsert = time();
//            $id = $this->input->post('lcid');
            $datatabel = array(
                'nama' => $this->input->post('lcnama'),
                'hpwa' => $this->input->post('lchpwa'),
                'kemeja' => $this->input->post('lckemeja'),
                'prodomisilih' => $this->input->post('lcpropinsi'),
                'kabdomisilih' => $this->input->post('lckabupaten'),
                'tgllahir' => strtotime($this->input->post('lctgllahir')),
                'alamat' => $this->input->post('lcalamat'),
                'kodepos' => $this->input->post('lckodepos'),
                'idchapter' => $this->input->post('lcchapter'),
                'idtahununit' => $this->input->post('lctahununit'),
                'idkapasitasunit' => $this->input->post('lckapasitasunit'),
                'idwarnaunit' => $this->input->post('lcwarnaunit'),
                'nopolisi' => $this->input->post('lcnopolisi'),
                'norangka' => $this->input->post('lcnorangka'),
                'nomesin' => $this->input->post('lcnomesin'),
                'statusregis' => '0', 
                'ppok' => true,
                'aktif' => true,
                'ketaktif' => "Registrasi Ulang",
                'aktifdate' => $timeinsert
                
            );
//            $this->db->insert($this->tabel, $datatabel);
            $this->db->where('id_member', $id);
            $this->db->update($this->tabel, $datatabel);
            
//            $id = $this->db->insert_id();
            $path = $_FILES['ktp']['name'];
            $ext = pathinfo($path, PATHINFO_EXTENSION);
            $data_banner['ktpsim'] = 'ktp_' . $id . '.' . $ext;
            $this->crudmodel->file_up("ktp", "anggota", $id, '', 'no', '.' . $ext);
            $this->db->where('id_member', $id);
            $this->db->update($this->tabel, $data_banner);
            
            $path = $_FILES['stnk']['name'];
            $ext = pathinfo($path, PATHINFO_EXTENSION);
            $data_banner['stnk'] = 'stnk_' . $id . '.' . $ext;
            $this->crudmodel->file_up("stnk", "anggota", $id, '', 'no', '.' . $ext);
            $this->db->where('id_member', $id);
            $this->db->update($this->tabel, $data_banner);
            
//            $path = $_FILES['transfer']['name'];
//            $ext = pathinfo($path, PATHINFO_EXTENSION);
//            $data_banner['buktitransfer'] = 'transfer_' . $id . '.' . $ext;
//            $this->crudmodel->file_up("transfer", "anggota", $id, '', 'no', '.' . $ext);
//            $this->db->where('id_member', $id);
//            $this->db->update($this->tabel, $data_banner);
            
            $path = $_FILES['photo']['name'];
            $ext = pathinfo($path, PATHINFO_EXTENSION);
            $data_banner['photo'] = 'photo_' . $id . '.' . $ext;
            $this->crudmodel->file_up("photo", "anggota", $id, '', 'no', '.' . $ext);
            $this->db->where('id_member', $id);
            $this->db->update($this->tabel, $data_banner);
            
//            $this->crudmodel->set_category_data(0);
//            recache();
            
            //simpan nomor cantik
//            $lcnobagus = $this->input->post('lcnopungbagus');
//            $data_nopung['idbooking'] = $id;
//            if($lcnobagus != "0"){
//                $this->db->where('nopungbagus', $lcnobagus);
//                $this->db->update('nopungbagus', $data_nopung);
//            }
            
               // membuat user login
            $lcDataList = $this->crudmodel->get_data_by_id($this->tabel, $id)->row();
            $lcNama = $lcDataList->nama;
            $email = $lcDataList->email;
            $lcUserLogin = $lcDataList->email;
            $salt = $this->authmodel->generatePass(10);
            $enscript1 = "MchfudhCRV!";
            $enscript2 = "!OjiFaouji...?";
            $password = $salt;
            $pass = md5($enscript1 . md5($password) . $enscript2);

            $datatabel = array(
                'nama' => $lcNama,
                'userlogin' => $lcUserLogin,
                'userpass' => $pass,
                'salt' => $password,
                'akses' => '100',
                'idmember' => $id
            );
            
            // cek apakah sudah sudah ada
            $this->db->where('userlogin', $lcUserLogin);
            $tceklogin = $this->db->get('user');
            if($tceklogin->num_rows() > 0){
                $this->db->where('userlogin', $lcUserLogin);
                $this->db->update('user', $datatabel);
            }else{
                $this->db->insert('user', $datatabel);
            }
            // kirim email ke jbatan penerima email // korchap
            $newmember = $lcDataList->nama;
            $hpwa = $lcDataList->hpwa;
            $alamat = $lcDataList->alamat;
            $nopung = $lcDataList->nopung;

            $this->db->where('idchapter', $lcDataList->idchapter);
            $lckirim = $this->db->get('v_emailmember')->result();
            $this->db->where('idchapter', $lcDataList->idchapter);
            $num_row = $this->db->get('v_emailmember')->num_rows();
            if ($num_row > 0) {
                $message = "<pra>";
                $message .= "Telah Registrasi Ulang Dalam Chapter Anda <br/> <br/>";
                $message .= "Nama   : " . $newmember . "<br/>";
                $message .= "No Hp  : " . $hpwa . "<br/>";
                $message .= "Nopung : " . $nopung . "<br/><br/><br/><br/>";
                $message .= "cr-v club indonesia ";
                $message .= "</pra>";
                foreach ($lckirim as $row) {
                    $kirimemail = $row->email;
                    $this->send_ulang($kirimemail, $message);
                }
            }
//            if ($kirimemail > 0) {
//                // kirim email 
////                $this->send_mail($kirimemail,$nopung);
//            }
//            $email = "machfudh@gmail.com";
            // kirim email ke diri nya sen diri ( user login dan password }
            $message = "<pra>";
            $message .= "Terima Kasih  Telah Registrasi Ulang <br/>";
            $message .= "Selamat Bergabung Kembali Dengan Keluarga Besar CR-V Club Indonesia <br/> <br/>";
            $message .= "Nama   : " . $newmember . "<br/>";
            $message .= "Nopung : " . $nopung . "<br/><br/><br/><br/>";
            $message .= "User Login  : " . $lcUserLogin . "<br/>";
            $message .= "Password : " . $password . "<br/><br/><br/><br/>";
            $message .= "cr-v club indonesia ";
            $message .= "</pra>";

            $this->send_ulang($email, $message);
            
            
            
            redirect('terimakasih');
//        }
    }
    
    public function send_ulang($email, $message) {

        $this->load->library('mailer');

        $email_penerima = $email;
        $subjek = "Registrasi Ulang";
        $attachment = "";
        $content = $this->load->view('emailtemplate', array('pesan' => $message), true); // Ambil isi file content.php dan masukan ke variabel $content

        $sendmail = array(
            'email_penerima' => $email_penerima,
            'subjek' => $subjek,
            'content' => $content,
            'attachment' => $attachment
        );

        $send = $this->mailer->send($sendmail);
    }
    
    
     function dump($var, $die = FALSE) {
        echo '<pre>';
        var_dump($var);
        echo '</pre>';
        if ($die)
            die;
    }

}
