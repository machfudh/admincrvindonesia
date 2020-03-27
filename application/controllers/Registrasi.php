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
class Registrasi extends CI_Controller {

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
    var $title = 'Registrasi';
    var $linkweb = 'member';
    var $titlemenu = 'Master Data';
    var $tabel = 'member';

    function index() {
        $this->isiresgistrasi();
    }

    function isiresgistrasi() {
        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['main_view'] = $this->tabel . '/formregis';
        $data['form_action'] = site_url('registrasi/action/save/');

        $data['listid_kemeja'] = array('s' => 'S',
            'm' => 'M',
            'l' => 'L',
            'xl' => 'XL',
            'xxl' => 'XXL',
            'xxxl' => 'XXXL');

        $propinsi = $this->propinsimodel->allpropinsi()->result();
        $num_row = $this->propinsimodel->allpropinsi()->num_rows();
        $data['listid_propinsi'][0] = "Pilih Propinsi Domisih Anda ...";
        if ($num_row > 0) {
            foreach ($propinsi as $row) {
                $data['listid_propinsi'][$row->kode] = $row->provinsi;
            }
        }

        $kabupaten = $this->kabupatenmodel->allkabupaten()->result();
        $num_row = $this->kabupatenmodel->allkabupaten()->num_rows();
        $data['listkabupaten'][0] = 'Pilih Kabupaten Domisih Anda';
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
                $data['listid_chapter'][$row->id_chapter] = $row->namachapter . " | " . $row->provinsi . " | " . $row->kabupaten;
            }
        }
        
        $lsnocan = $this->db->get('vb_nopungbagus')->result();
        $num_row = $this->db->get('vb_nopungbagus')->num_rows();
            $data['listid_nopungbagus'][0] = "Tidak Pilih Nomor Cantik";
        if ($num_row > 0) {
            foreach ($lsnocan as $row) {
                $data['listid_nopungbagus'][$row->nopungbagus] = $row->nopungbagus;
            }
        }

        $this->load->view('regisfroms', $data);
    }
    
    
    function action($para1 = '', $para2 = '') {
//        $data['menu'] = $this->Callmenu->menu();
        $data['title'] = $this->title;

        if ($para1 == 'save') {
            $salt = $this->authmodel->generateSalt(10);
            $timeinsert = time();
            $datatabel = array(
                'nama' => $this->input->post('lcnama'),
                'email' => $this->input->post('lcemail'),
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
                'ppok' => true,
                'insertdate' => $timeinsert
                
            );
            $this->db->insert($this->tabel, $datatabel);
            
            $id = $this->db->insert_id();
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
            
            $path = $_FILES['transfer']['name'];
            $ext = pathinfo($path, PATHINFO_EXTENSION);
            $data_banner['buktitransfer'] = 'transfer_' . $id . '.' . $ext;
            $this->crudmodel->file_up("transfer", "anggota", $id, '', 'no', '.' . $ext);
            $this->db->where('id_member', $id);
            $this->db->update($this->tabel, $data_banner);
            
            $path = $_FILES['photo']['name'];
            $ext = pathinfo($path, PATHINFO_EXTENSION);
            $data_banner['photo'] = 'photo_' . $id . '.' . $ext;
            $this->crudmodel->file_up("photo", "anggota", $id, '', 'no', '.' . $ext);
            $this->db->where('id_member', $id);
            $this->db->update($this->tabel, $data_banner);
            
//            $this->crudmodel->set_category_data(0);
//            recache();
            
            //simpan nomor cantik
            $lcnobagus = $this->input->post('lcnopungbagus');
            $data_nopung['idbooking'] = $id;
            if($lcnobagus != "0"){
                $this->db->where('nopungbagus', $lcnobagus);
                $this->db->update('nopungbagus', $data_nopung);
            }
            
            redirect('terimakasih');
        }
    }

}
