<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Uploaddata
 *
 * @author user
 */
class Uploaddata extends CI_Controller {
    
     function __construct() {
        parent::__construct();
//        if ($this->session->userdata('username') == null) {
//            redirect('login');
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
    }

    var $limit = 10;
    var $title = 'Data Dokument';
    var $linkweb = 'Data Dokument';
    var $titlemenu = 'Data Dokument';
    var $tabel = 'barang';

    function index() {
        $this->listdata();
    }

    function listdata($offset = 0) {
        ;
//        $data['menu'] = $this->Callmenu->menu();
        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['main_view'] = 'tabel';
        $data['form_action'] = site_url($this->linkweb . '/searchdata');
        $data['search'] = array('kode_kurir' => 'Kode Kurir',
            'nama' => 'Nama',
            'ketetangan' => 'Keterangan',
            'userlogin' => 'User Login',
            'nomor_kend' => 'Nomor Kendaraan',
        );
        $data['sfocus'] = 'kode_kurir';
        $finds = $this->session->userdata('finds');
        $findt = $this->session->userdata('findt');

        if ($this->session->userdata('caridata') == 'cr' . $this->tabel) {
            $finds = $this->session->userdata('finds');
            $findt = $this->session->userdata('findt');
        } else {
            $finds = '';
            $findt = '';
        }
        $uri_segment = 3;
        $offset = $this->uri->segment($uri_segment);

        $mDatalist = $this->crudmodel->list_data($this->tabel, $this->limit, $offset, $finds, $findt)->result();
        $numRow = $this->crudmodel->count_data($this->tabel);
        if ($numRow > 0) {
            $config['base_url'] = site_url('armada/listdata');
            $config['total_rows'] = $numRow;
            $config['per_page'] = $this->limit;
            $config['uri_segment'] = $uri_segment;
            $config['first_link'] = '&laquo;';
            $config['first_tag_open'] = '<li class="first">';
            $config['first_tag_close'] = '</li>';
            $config['last_link'] = '&raquo;';
            $config['last_tag_open'] = '<li class="last">';
            $config['last_tag_close'] = '</li>';
            $config['next_link'] = '&rsaquo;';
            $config['next_tag_open'] = '<li class="next">';
            $config['next_tag_close'] = '</li>';
            $config['prev_link'] = '&lsaquo;';
            $config['prev_tag_open'] = '<li class="previous">';
            $config['prev_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="last"><a>';
            $config['cur_tag_close'] = '</a></li>';
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';
            $this->pagination->initialize($config);
            $data['pagination'] = 'Pages 1 of ' . ceil($numRow / $this->limit) . ' Total Record ' . $numRow . ' ' . $this->pagination->create_links();
            $tmpl = array('table_open' => '<table class="table table-hover table-bordered mg-b-0">',
                'heading_row_start' => '<thead class="bg-info"><tr>',
                'heading_row_end' => '</tr></thead>',
                'heading_cell_start' => '<th>',
                'heading_cell_end' => '</th>',
                'row_start' => '<tr>',
                'row_end' => '</tr>',
                'row_alt_start' => '<tr>',
                'row_alt_end' => '</tr>'
            );
            $this->table->set_template($tmpl);
            $this->table->set_heading(
                    array('data' => 'No', 'style' => 'width:3%'), 
                    array('data' => 'SegNo', 'style' => 'width:10%'), 
                    array('data' => 'Noref', 'style' => 'width:10%'), 
                    array('data' => 'Nama'), 
                    array('data' => 'Alamat', 'style' => 'width:30%'), 
                    array('data' => 'Status', 'style' => 'width:10%'), 
                    array('data' => 'Kurir', 'style' => 'width:10%'), 
                    array('data' => '', 'style' => 'width:7%'));
            $i = 0 + $offset;
            foreach ($mDatalist as $sDataList) {
               if($this->session->userdata('access')== '257'){ 
                $this->table->add_row( ++$i, anchor($this->tabel . '/action/edit/' . $sDataList->id_barang, $sDataList->segno), $sDataList->noreg, $sDataList->nama, $sDataList->alamat, $sDataList->status, $sDataList->kurir,  
                        anchor($this->tabel . '/action/edit/' . $sDataList->id_barang, '<i class="icon ion-edit"></i>', array('class' => "edit-row", 'data-original-title' => 'Edit')) . "&nbsp&nbsp&nbsp" .
                        anchor($this->tabel . '/action/delete/' . $sDataList->id_barang, '<i class="icon ion-trash-a"></i>', array('class' => "delete-row", 'data-original-title' => 'Delete', 'onclick' => "return confirm('Anda yakin akan menghapus data ini?')"))
                );
               }else if ($this->session->userdata('access')== '100'){
                $this->table->add_row( ++$i,'<img src="'.base_url().'uploads/kurir_image/'.$sDataList->photokurir.'" class="wd-40" alt="Image">', anchor($this->tabel . '/action/edit/' . $sDataList->id_kurir, $sDataList->kode_kurir), $sDataList->nama, $sDataList->ketetangan, $sDataList->userlogin, $sDataList->nomor_kend 
                );
               } 
            }

            $data['table'] = $this->table->generate();
        } else {
            $data['message'] = 'Tidak ditemukan satupun data !';
        }
        $data['link'] = array('link_add' => anchor($this->tabel . '/action/add', '<div><i class="fa fa-plus"></i></div>', 'class="btn btn-outline-success btn-icon mg-r-5"'),
            'link_print' => anchor($this->tabel . '/action/add', 'Print', 'class="btn btn-success btn-small hidden-phone"'));
        $this->load->view('templates', $data);
    }

    function searchdata() {
        $this->session->set_userdata('caridata', 'cr' . $this->tabel);
        $this->session->set_userdata('finds', $this->input->post('lcfinds'));
        $this->session->set_userdata('findt', $this->input->post('lcfindt'));
        redirect($this->tabel);
    }

    function action($para1 = '', $para2 = '') {
//        $data['menu'] = $this->Callmenu->menu();
        $data['title'] = $this->title;

        if ($para1 == 'save') {
            $salt = $this->authmodel->generateSalt(10);
            $timeinsert = time();
            $enscript1 = "Use3RSAG!";
            $enscript2 = "!Machfudh...?";
            $password = $this->input->post('lcuserpass');
            $pass = md5($enscript1 . md5($password) . $enscript2);
            $passw_hash = md5(md5($pass) . $salt);
            $datatabel = array(
                'kode_kurir' => $this->input->post('lckode_kurir'),
                'nama' => $this->input->post('lcnama'),
                'ketetangan' => $this->input->post('lcketetangan'),
                'userlogin' => $this->input->post('lcuserlogin'),
                'userpass' => $passw_hash,
                'nomor_kend' => $this->input->post('lcnomor_kend'),
                'salt' => $salt,
                'tanggalinsert' => $timeinsert,
                'userinsert' => $this->session->userdata('iduserlog'),
            );
            $this->db->insert($this->tabel, $datatabel);
            $id = $this->db->insert_id();
            $path = $_FILES['img']['name'];
            $ext = pathinfo($path, PATHINFO_EXTENSION);
            $data_banner['photokurir'] = 'kurir_' . $id . '.' . $ext;
            $this->crudmodel->file_up("img", "kurir", $id, '', 'no', '.' . $ext);
            $this->db->where('id_kurir', $id);
            $this->db->update($this->tabel, $data_banner);
//            $this->crudmodel->set_category_data(0);
//            recache();
            redirect($this->tabel);
        } elseif ($para1 == 'update') {
            $salt = $this->authmodel->generateSalt(10);
            $timeinsert = time();
            $enscript1 = "Use3RSAG!";
            $enscript2 = "!Machfudh...?";
            $password = $this->input->post('lcuserpass');
            $pass = md5($enscript1 . md5($password) . $enscript2);
            $passw_hash = md5(md5($pass) . $salt);
            if ($this->input->post('lcuserpass') == "" || $this->input->post('lcuserpass') == null) {
            $data = array(
                'nama' => $this->input->post('lcnama'),
                'ketetangan' => $this->input->post('lcketetangan'),
                'userlogin' => $this->input->post('lcuserlogin'),
                'nomor_kend' => $this->input->post('lcnomor_kend'),
                'salt' => $salt,
                'tanggaledit' => $timeinsert,
                'useredit' => $this->session->userdata('iduserlog'),
                'kode_area' => $this->input->post('lckode_area'),  
            );
            }else{
              $data = array(
                'nama' => $this->input->post('lcnama'),
                'ketetangan' => $this->input->post('lcketetangan'),
                'userlogin' => $this->input->post('lcuserlogin'),
                'userpass' => $passw_hash,
                'nomor_kend' => $this->input->post('lcnomor_kend'),
                'salt' => $salt,
                'tanggaledit' => $timeinsert,
                'useredit' => $this->session->userdata('iduserlog'),
            ); 
            }
            $this->db->where('id_'.$this->tabel, $para2);
            $this->db->update($this->tabel, $data);
            if ($_FILES['img']['name'] !== '') {
                $path = $_FILES['img']['name'];
                $ext = pathinfo($path, PATHINFO_EXTENSION);
                $data_logo['photokurir'] = 'kurir_' . $para2 . '.' . $ext;
                $this->crudmodel->file_up("img", "kurir", $para2, '', 'no', '.' . $ext);
                $this->db->where('id_kurir', $para2);
                $this->db->update($this->tabel, $data_logo);
            }
//            $this->crudmodel->set_category_data(0);
//            recache();
            redirect($this->tabel);
        } elseif ($para1 == 'add') {
            $data['titlemenu'] = $this->titlemenu;
            $data['main_view'] = $this->tabel . '/form';
            $data['form_action'] = site_url($this->tabel . '/action/save/');
            $this->load->view('tempfroms', $data);
        } elseif ($para1 == 'edit') {
            $data['titlemenu'] = $this->titlemenu;
            $data['main_view'] = $this->tabel . '/formedit';
            $data['form_action'] = site_url($this->tabel . '/action/update/' . $para2);
            $this->db->where('id_'.$this->tabel, $para2);
            $this->db->get($this->tabel);
            $lcDataList = $this->crudmodel->get_data_by_id($this->tabel, $para2)->row();
            $data['data']['lcid'] = $lcDataList->id_kurir;
            $data['data']['lckode_kurir'] = $lcDataList->kode_kurir;
            $data['data']['lcnama'] = $lcDataList->nama;
            $data['data']['lcketetangan'] = $lcDataList->ketetangan;
            $data['data']['lcuserlogin'] = $lcDataList->userlogin;
            $data['data']['lcuserpass'] = "";
            $data['data']['lcnomor_kend'] = $lcDataList->nomor_kend;
            $data['data']['lcphoto'] = $lcDataList->photokurir;
            $data['data']['lckode_area'] = $lcDataList->kode_area;
            $this->load->view('tempfroms', $data);
        } elseif ($para1 = 'delete') {
            $this->db->where('id_'.$this->tabel, $para2);
            $this->db->delete($this->tabel);
//            $this->crudmodel->set_category_data(0);
            redirect($this->tabel);
        }
    }
}    

//    function __construct() {
//        parent::__construct();
////        if ($this->session->userdata('username') == null) {
////            redirect('login');
////        }
//    }
//
//    function index() {
//
//        $StudentDetails = base_url() . 'uploads/upload_file/data_bank_mega.txt';
////        $studentArr = file($StudentDetails, FILE_IGNORE_NEW_LINES);
////        print_r($studentArr);
//
//        $file = fopen($StudentDetails, "r");
//        $StudentDetails = array();
//
//        while (!feof($file)) {
//            $StudentDetails[] = fgets($file);
//        }
//
//        fclose($file);
//        print_r($StudentDetails);
//
//        echo "</br>";
//        if (!empty($StudentDetails)) {
//            foreach ($StudentDetails as $lines => $value):
//                print 'No : ' . $lines . ': ' . $value . "</br>";
//                $hasilex = explode('","', $value);
//                if (!empty($hasilex)) {
//                    foreach ($hasilex as $linesxx => $valuexx):
//                        print 'Noxx : ' . $linesxx . ': ' . $valuexx . "</br>";
//                    endforeach;
//                }
//                
//                if ($lines > 0 ) {
//                    if ($hasilex[0] != null){
//                    $datatabel = array(
//                        'seqno' => preg_replace("/[^a-zA-Z0-9]/", "", $hasilex[0]),
//                        'noref' => $hasilex[1],
//                        'nama' => $hasilex[2],
//                        'alamat1' => $hasilex[3],
//                        'alamat2' => $hasilex[4],
//                        'alamat3' => $hasilex[5],
//                        'kota' => $hasilex[6],
//                        'tgl_upload' => $hasilex[7],
//                        'type' => $hasilex[8],
//                        'serv_type' => preg_replace("/[^a-zA-Z0-9]/", "", $hasilex[9]),
//                    );
//                    
//                    $this->db->insert('barang', $datatabel);
//                    }
//                    
//                    }
//            endforeach;
//        }
//    }
    
    /*
     *  tambahin id upload
     *  cek sekali saja di record paling awal
     * 
     * 
     * /
     */

//}
