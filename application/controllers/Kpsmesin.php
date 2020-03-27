<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Kpsmesin extends CI_Controller {
    function __construct() {
        parent::__construct();
//        if ($this->session->userdata('username') == null) {
//            redirect('login');
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
    }

    var $limit = 10;
    var $title = 'Kapasitas Mesin';
    var $linkweb = 'kpsmesin';
    var $titlemenu = 'Master Data';
    var $tabel = 'kpsmesin';

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
        $data['search'] = array('kpsmesin' => 'Kapasitas Mesin');
        $data['sfocus'] = 'kpsmesin';
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
        $numRow = $this->crudmodel->count_data($this->tabel)->num_rows();
        if ($numRow > 0) {
            $config['base_url'] = site_url('kpsmesin/listdata');
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
            $data['pagination'] = ' Total Record ' . $numRow . "&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;". $this->pagination->create_links();
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
                    array('data' => 'Kapasitas Mesin', 'style' => 'width:17%'), 
                    array('data' => 'Keterangan'), 
                    array('data' => '', 'style' => 'width:7%'));
            $i = 0 + $offset;
            foreach ($mDatalist as $sDataList) {
            //   if($this->session->userdata('access')== '257'){ 
                $this->table->add_row( anchor($this->tabel . '/action/edit/' . $sDataList->id_kpsmesin, $sDataList->kpsmesin),$sDataList->keterangan,   
                        anchor($this->tabel . '/action/edit/' . $sDataList->id_kpsmesin, '<i class="icon ion-edit"></i>', array('class' => "edit-row", 'data-original-title' => 'Edit')) . "&nbsp&nbsp&nbsp" .
                        anchor($this->tabel . '/action/delete/' . $sDataList->id_kpsmesin, '<i class="icon ion-trash-a"></i>', array('class' => "delete-row", 'data-original-title' => 'Delete', 'onclick' => "return confirm('Anda yakin akan menghapus data ini?')"))
                );
              // }else if ($this->session->userdata('access')== '100'){
              //  $this->table->add_row( ++$i,anchor($this->tabel . '/action/edit/' . $sDataList->id_kpsmesin, $sDataList->id_kpsmesin), $sDataList->ket 
              //  );
             //  } 
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
            $datatabel = array(
                'kpsmesin' => $this->input->post('lckpsmesin'),
                'keterangan' => $this->input->post('lcketerangan')
            );
            $this->db->insert($this->tabel, $datatabel);
//            $this->crudmodel->set_category_data(0);
//            recache();
            redirect($this->tabel);
        } elseif ($para1 == 'update') {
            $salt = $this->authmodel->generateSalt(10);
            $timeinsert = time();
            $data = array(
                'kpsmesin' => $this->input->post('lckpsmesin'),
                'keterangan' => $this->input->post('lcketerangan')
            );
            $this->db->where('id_'.$this->tabel, $para2);
            $this->db->update($this->tabel, $data);
            
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
            $data['main_view'] = $this->tabel . '/form';
            $data['form_action'] = site_url($this->tabel . '/action/update/' . $para2);
            $this->db->where('id_'.$this->tabel, $para2);
            $this->db->get($this->tabel);
            $lcDataList = $this->crudmodel->get_data_by_id($this->tabel, $para2)->row();
            $data['data']['lcid'] = $lcDataList->id_kpsmesin;
            $data['data']['lckpsmesin'] = $lcDataList->kpsmesin;
            $data['data']['lcketerangan'] = $lcDataList->keterangan;
            $this->load->view('tempfroms', $data);
        } elseif ($para1 = 'delete') {
            $this->db->where('id_'.$this->tabel, $para2);
            $this->db->delete($this->tabel);
//            $this->crudmodel->set_category_data(0);
            redirect($this->tabel);
        }
    }
}

