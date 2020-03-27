<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Newmember
 *
 * @author Mahfud
 */
class Regulmember extends CI_Controller {

    function __construct() {
        parent::__construct();
//        if ($this->session->userdata('username') == null) {
//            redirect('login');
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
        $this->load->model('kabupatenmodel');
        $this->load->model('propinsimodel');
        $this->load->library('email');
    }

    var $limit = 10;
    var $title = 'Registrasi Ulang';
    var $linkweb = 'regulmember';
    var $titlemenu = 'Master Data';
    var $tabel = 'member';

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
        $data['search'] = array('nopung' => 'No Pung.......',
            'chapter' => 'Chapter',
            'nopolisi' => 'No Polisi',
            'provinsi' => 'Provinsi',
            'kabupaten' => 'Kabupaten');

        $data['sfocus'] = 'nopung';
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

        $mDatalist = $this->crudmodel->list_view("v_regulmember", $this->limit, $offset, $finds, $findt)->result();
        $numRow = $this->crudmodel->count_data("regulmember")->num_rows();
        if ($numRow > 0) {
            $config['base_url'] = site_url('regulmember/listdata');
            $config['total_rows'] = $numRow;
            $config['per_page'] = $this->limit;
            $config['uri_segment'] = $uri_segment;
            $config['first_link'] = '<i class="fa fa-angle-double-left"></i>';
            $config['first_tag_open'] = ' <li class="page-item">';
            $config['first_tag_close'] = '</li>';
            $config['last_link'] = '<i class="fa fa-angle-double-right"></i>';
            $config['last_tag_open'] = '<li class="page-item">';
            $config['last_tag_close'] = '</li>';
            $config['next_link'] = '<i class="fa fa-angle-right"></i>';
            $config['next_tag_open'] = '<li class="page-item">';
            $config['next_tag_close'] = '</li>';
            $config['prev_link'] = '<i class="fa fa-angle-left"></i>';
            $config['prev_tag_open'] = '<li class="page-item">';
            $config['prev_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="page-item">';
            $config['cur_tag_close'] = '</li>';
            $config['num_tag_open'] = '<li class="page-item">';
            $config['num_tag_close'] = '</li>';
            $this->pagination->initialize($config);
            $data['pagination'] = ' Total Record ' . $numRow . "&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;" . $this->pagination->create_links();
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
                    array('data' => 'No', 'style' => 'width:5%'),
                    array('data' => 'Nopung', 'style' => 'width:7%'), 
                    array('data' => 'Nama'), 
                    array('data' => 'Chapter', 'style' => 'width:25%'), 
                    array('data' => 'No Polisi', 'style' => 'width:7%'), 
                    array('data' => '', 'style' => 'width:7%'));
            $i = 0 + $offset;
            foreach ($mDatalist as $sDataList) {
                //   if($this->session->userdata('access')== '257'){ 
                $this->table->add_row(++$i,$sDataList->nopung != "" ? $sDataList->nopung : " ", $sDataList->nama, $sDataList->namachapter, $sDataList->nopolisi, 
                        anchor('regulmember/action/edit/' . $sDataList->id_member, '<i class="icon ion-archive"></i>', array('class' => "edit-row", 'data-original-title' => 'Edit')));
                // }else if ($this->session->userdata('access')== '100'){
                //  $this->table->add_row( ++$i,anchor($this->tabel . '/action/edit/' . $sDataList->id_member, $sDataList->id_member), $sDataList->ket 
                //  );
                //  } 
            }

            $data['table'] = $this->table->generate();
        } else {
            $data['message'] = 'Tidak ditemukan satupun data !';
        }
//        $data['link'] = array('link_add' => anchor($this->tabel . '/action/add', '<div><i class="fa fa-plus"></i></div>', 'class="btn btn-outline-success btn-icon mg-r-5"'),
//            'link_print' => anchor($this->tabel . '/action/add', 'Print', 'class="btn btn-success btn-small hidden-phone"'));
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
            
        } elseif ($para1 == 'update') {
            
        } elseif ($para1 == 'edit') {
            $data['main_view'] = $this->tabel . '/formview';
            $data['titlemenu'] = "Member";
            $data['title'] = "Regestrsi Ulang Anggota";
               
            $data['form_action'] = site_url("registrasi_ulang");
            $this->db->where('id_' . $this->tabel, $para2);
            $this->db->get($this->tabel);
            $lcDataList = $this->crudmodel->get_data_by_id($this->tabel, $para2)->row();
            $data['data']['lcid'] = $lcDataList->id_member;
            $data['data']['lcnama'] = $lcDataList->nama;
            $data['data']['lcemail'] = $lcDataList->email;
            $data['data']['lckemeja'] = $lcDataList->kemeja;
            // $data['data']['lcpropinsi'] = $lcDataList->prodomisilih;
//            $data['data']['lckabupaten'] = $lcDataList->kabdomisilih;
            $data['data']['lctgllahir'] = $lcDataList->tgllahir != "" ? date("d-m-Y", $lcDataList->tgllahir) : "";
            $data['data']['lcalamat'] = $lcDataList->alamat;
            $data['data']['lckodepos'] = $lcDataList->kodepos;
            $data['data']['lcjabatan'] = $lcDataList->idjabatan;
            $data['data']['lcchapter'] = $lcDataList->idchapter;
            $data['data']['lchpwa'] = $lcDataList->hpwa;
//            $data['data']['lckapasitasunit'] = $lcDataList->idkapasitasunit;
//            $data['data']['lcwarnaunit'] = $lcDataList->idwarnaunit;
            $data['data']['lcnopolisi'] = $lcDataList->nopolisi;
            $data['data']['lcnorangka'] = $lcDataList->norangka;
            $data['data']['lcnomesin'] = $lcDataList->nomesin;
            $data['data']['lcktpsim'] = $lcDataList->ktpsim;
            $data['data']['lcstnk'] = $lcDataList->stnk;
            $data['data']['lcbuktitransfer'] = $lcDataList->buktitransfer;
            $data['data']['lcphoto'] = $lcDataList->photo;
            $data['data']['lcppok'] = $lcDataList->ppok;

            if( $lcDataList->prodomisilih == " "){
            $this->db->where('kode', $lcDataList->prodomisilih);
            $data['data']['lcprodomisilih'] = $this->db->get('provinsi')->row()->provinsi;
            }else{
            
                $propinsi = $this->propinsimodel->allpropinsi()->result();
            $num_row = $this->propinsimodel->allpropinsi()->num_rows();
            if ($num_row > 0) {
                foreach ($propinsi as $row) {
                    $data['listid_propinsi'][$row->kode] = $row->provinsi;
                }
            }
            }
            
            if($lcDataList->kabdomisilih == " ") {
            $this->db->where('id', $lcDataList->kabdomisilih);
            $data['data']['lckabdomisilih'] = $this->db->get('kabupaten')->row()->kabupaten;
            }else{
               $kabupaten = $this->kabupatenmodel->allkabupaten()->result();
            $num_row = $this->kabupatenmodel->allkabupaten()->num_rows();
            $data['listkabupaten'][0] = 'All Kab/Kota';
            if ($num_row > 0) {
                foreach ($kabupaten as $row) {
                    $data['listkabupaten'][$row->id] = $row->kabupaten;
                }
            } 
                
            }
            
            $this->db->where('id_warnaunit', $lcDataList->idwarnaunit);
            $data['data']['lcidwarnaunit'] = $this->db->get('v_warnaunit')->row()->warna;

            $this->db->where('id_thnunit', $lcDataList->idtahununit);
            $data['data']['lcidtahununit'] = $this->db->get('v_thnunit')->row()->tahun;

            $this->db->where('id_kpsmesin', $lcDataList->idkapasitasunit);
            $data['data']['lcidkapasitasunit'] = $this->db->get('v_kpsmesin')->row()->kpsmesin;


            $lschapter = $this->db->get('v_chapter')->result();
            $num_row = $this->db->get('v_chapter')->num_rows();
//            $data['listid_thnunit'][0] = "All Courier ...";
            if ($num_row > 0) {
                foreach ($lschapter as $row) {
                    $data['listid_chapter'][$row->id_chapter] = $row->namachapter . "#" . $row->provinsi . "#" . $row->kabupaten;
                }
            }

            $this->db->where('idbooking', $para2);
            $lcnopung = $this->db->get('nopungbagus')->row();
            $this->db->where('idbooking', $para2);
            $num_row = $this->db->get('nopungbagus')->num_rows();

            if ($num_row > 0) {
                $data['data']['lcnopung'] = $lcnopung->nopungbagus;
            } else {
                $lcgetnopung = $this->db->get('v_getnopung')->row();
                $lcgetnopung = $lcgetnopung->nopung + 1;
                
                
                //di cek lagi apakah nomor tsb sudah ada 
                $this->db->where('nopung', $lcgetnopung);
                $num_row = $this->db->get('member')->num_rows();
                if($num_row > 0){
                   $lcgetnopung = $lcgetnopung + 1; 
                }
                
                //di cek juga di nomor cantik
                $this->db->where('nopungbagus', $lcgetnopung);
                $num_row = $this->db->get('nopungbagus')->num_rows();
                if($num_row > 0){
                   $lcgetnopung = $lcgetnopung + 1; 
                }
                
               if($this->session->userdata('access') > 100) {
                $data['data']['lcnopung'] = $lcgetnopung;
               }else{
                $data['data']['lcnopung'] = $lcDataList->nopung;   
               }
            }

            $this->load->view('tempfroms', $data);
        } elseif ($para1 = 'delete') {
          
        } elseif ($para1 == 'regsave') {
           
        }
    }
    

}
