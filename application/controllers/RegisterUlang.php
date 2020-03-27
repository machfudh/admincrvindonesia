<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of RegisterUlang
 *
 * @author Mahfud
 */
class RegisterUlang extends CI_Controller {
    
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
    var $title = 'RegisterUlang';
    var $linkweb = 'member';
    var $titlemenu = 'Master Data';
    var $tabel = 'member';

    function index() {
        $this->regsiterulang/action/add;
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

        $mDatalist = $this->crudmodel->list_data($this->tabel, $this->limit, $offset, $finds, $findt)->result();
        $numRow = $this->crudmodel->count_data($this->tabel);
        if ($numRow > 0) {
            $config['base_url'] = site_url('member/listdata');
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
                    array('data' => 'Nopung', 'style' => 'width:7%'), 
                    array('data' => 'Nama'),
                    array('data' => 'Chapter', 'style' => 'width:25%'),
                    array('data' => 'No Polisi', 'style' => 'width:7%'),
                    array('data' => 'Provinsi', 'style' => 'width:15%'),
                    array('data' => 'Kabupaten', 'style' => 'width:20%'),
                    array('data' => '', 'style' => 'width:7%'));
            $i = 0 + $offset;
            foreach ($mDatalist as $sDataList) {
                //   if($this->session->userdata('access')== '257'){ 
                $this->table->add_row(anchor($this->tabel . '/action/edit/' . $sDataList->id_member, $sDataList->nopung=null?" ":$sDataList->nopung), $sDataList->nama,$sDataList->namachapter,$sDataList->nopolisi,$sDataList->provinsi,$sDataList->kabupaten, 
                        anchor($this->tabel . '/action/edit/' . $sDataList->id_member, '<i class="icon ion-edit"></i>', array('class' => "edit-row", 'data-original-title' => 'Edit')) . "&nbsp&nbsp&nbsp" .
                        anchor($this->tabel . '/action/delete/' . $sDataList->id_member, '<i class="icon ion-trash-a"></i>', array('class' => "delete-row", 'data-original-title' => 'Delete', 'onclick' => "return confirm('Anda yakin akan menghapus data ini?')"))
                );
                // }else if ($this->session->userdata('access')== '100'){
                //  $this->table->add_row( ++$i,anchor($this->tabel . '/action/edit/' . $sDataList->id_member, $sDataList->id_member), $sDataList->ket 
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
                'nama' => $this->input->post('lcnama'),
                'email' => $this->input->post('lcemail'),
                'kemeja' => $this->input->post('lckemeja'),
                'prodomisilih' => $this->input->post('lcpropinsi'),
                'kabdomisilih' => $this->input->post('lckabupaten'),
                'tgllahir' => $this->input->post('lctgllahir'),
                'alamat' => $this->input->post('lcalamat'),
                'kodepos' => $this->input->post('lckodepos'),
                'idchapter' => $this->input->post('lcchapter'),
                'idtahununit' => $this->input->post('lctahununit'),
                'idkapasitasunit' => $this->input->post('lckapasitasunit'),
                'idwarnaunit' => $this->input->post('lcwarnaunit'),
                'nopolisi' => $this->input->post('lcnopolisi'),
                'norangka' => $this->input->post('lcnorangka'),
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
            
//            $this->crudmodel->set_category_data(0);
//            recache();
            redirect($this->tabel);
        } elseif ($para1 == 'update') {
            $salt = $this->authmodel->generateSalt(10);
            $timeinsert = time();
            $data = array(
                 'nama' => $this->input->post('lcnama'),
                'email' => $this->input->post('lcemail'),
                'kemeja' => $this->input->post('lckemeja'),
                'prodomisilih' => $this->input->post('lcpropinsi'),
                'kabdomisilih' => $this->input->post('lckabupaten'),
                'tgllahir' => $this->input->post('lctgllahir'),
                'alamat' => $this->input->post('lcalamat'),
                'kodepos' => $this->input->post('lckodepos'),
                'idchapter' => $this->input->post('lcchapter'),
                'idtahununit' => $this->input->post('lctahununit'),
                'idkapasitasunit' => $this->input->post('lckapasitasunit'),
                'idwarnaunit' => $this->input->post('lcwarnaunit'),
                'nopolisi' => $this->input->post('lcnopolisi'),
                'norangka' => $this->input->post('lcnorangka'),
            );
            $this->db->where('id_' . $this->tabel, $para2);
            $this->db->update($this->tabel, $data);

//            $this->crudmodel->set_category_data(0);
//            recache();
            redirect($this->tabel);
        } elseif ($para1 == 'add') {
            $data['titlemenu'] = $this->titlemenu;
            $data['main_view'] = $this->tabel . '/form';
            $data['form_action'] = site_url($this->tabel . '/action/save/');

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

            $this->load->view('tempfroms', $data);
        } elseif ($para1 == 'edit') {
            $data['titlemenu'] = $this->titlemenu;
            $data['main_view'] = $this->tabel . '/form';
            $data['form_action'] = site_url($this->tabel . '/action/update/' . $para2);
            $this->db->where('id_' . $this->tabel, $para2);
            $this->db->get($this->tabel);
            $lcDataList = $this->crudmodel->get_data_by_id($this->tabel, $para2)->row();
            $data['data']['lcid'] = $lcDataList->id_member;
            $data['data']['lcnama'] = $lcDataList->nama;
            $data['data']['lcemail'] = $lcDataList->email;
            $data['data']['lckemeja'] = $lcDataList->kemeja;
            $data['data']['lcpropinsi'] = $lcDataList->prodomisilih;
            $data['data']['lckabupaten'] = $lcDataList->kabdomisilih;
            $data['data']['lctgllahir'] = $lcDataList->tgllahir;
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
            $data['data']['lcktpsim'] = $lcDataList->ktpsim;
            $data['data']['lcstnk'] = $lcDataList->stnk;
            $data['data']['lcbuktitransfer'] = $lcDataList->buktitransfer;
            $data['data']['lcppok'] = $lcDataList->ppok;
            
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
            
            
            $this->load->view('tempfroms', $data);
        } elseif ($para1 = 'delete') {
            $this->db->where('id_' . $this->tabel, $para2);
            $this->db->delete($this->tabel);
//            $this->crudmodel->set_category_data(0);
            redirect($this->tabel);
        } elseif ($para1 == 'regsave') {
            $salt = $this->authmodel->generateSalt(10);
            $timeinsert = time();
            $datatabel = array(
                'nama' => $this->input->post('lcnama'),
                'email' => $this->input->post('lcemail'),
                'kemeja' => $this->input->post('lckemeja'),
                'prodomisilih' => $this->input->post('lcpropinsi'),
                'kabdomisilih' => $this->input->post('lckabupaten'),
                'tgllahir' => $this->input->post('lctgllahir'),
                'alamat' => $this->input->post('lcalamat'),
                'kodepos' => $this->input->post('lckodepos'),
                'idchapter' => $this->input->post('lcchapter'),
                'idtahununit' => $this->input->post('lctahununit'),
                'idkapasitasunit' => $this->input->post('lckapasitasunit'),
                'idwarnaunit' => $this->input->post('lcwarnaunit'),
                'nopolisi' => $this->input->post('lcnopolisi'),
                'norangka' => $this->input->post('lcnorangka'),
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
            
//            $this->crudmodel->set_category_data(0);
//            recache();
            redirect('terimakasih');
        }
    }
}
