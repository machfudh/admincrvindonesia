<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Report
 *
 * @author user
 */
class Reportregul extends CI_Controller {

    function __construct() {
        parent::__construct();
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
    }

    var $limit = 10;
    var $title = 'Report Registrasi Ulang by Insert Date';
    var $linkweb = 'barang';
    var $titlemenu = 'Report';
    var $tabel = 'barang';

    function index() {
        $this->listdata();
    }

    function listdata($offset = 0) {
        ;
//        $data['menu'] = $this->Callmenu->menu();
//        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['main_view'] = 'report/tabel';
        $data['form_action'] = site_url('reportregul/searchdata');
        $data['search'] = array('seqno' => 'Seq No',
            'noref' => 'No reff',
            'nama' => 'Name',
            'alamat1' => 'Addresss',
            'statusketerangan' => 'Status',
            'kurir' => 'Courier',
        );
        $data['sfocus'] = 'kode_kurir';

        $data['bulansearch'] = array('01' => 'Jan',
            '02' => 'Feb',
            '03' => 'Mar',
            '04' => 'Apr',
            '05' => 'Mei',
            '06' => 'Jun',
            '07' => 'Jul',
            '08' => 'Agt',
            '09' => 'Sep',
            '10' => 'Okt',
            '11' => 'Nov',
            '12' => 'Des');

        $ttgl = date('t');
        $data['tgl_hari'] = array();
        for ($x = 1; $x < $ttgl + 1; $x++) {
            if ($x < 10) {
                $x = '0' . $x;
            }
            $data['tgl_hari'][$x] = $x;
        }
        $data['tgl_tahun'] = array('2017' => '2017', '2018' => '2018', '2019' => '2019', '2020' => '2020', '2021' => '2021', '2022' => '2022');

        $data['bulan'] = date('m');
        $data['hari'] = '1';
        $data['hari2'] = $ttgl;
//              $bulan = '';
        $bulan = $this->session->userdata('bulan');
        if ($bulan == '') {
            $bulan = date('m');
        }
        $tahun = $this->session->userdata('tahun');
        $data['year'] = date('Y');
        $tanggal1 = $this->session->userdata('tanggal1');
        if ($tanggal1 == '') {
            $data['hari'] = '1';
        } else {
            $data['hari'] = $tanggal1;
        }
        $tanggal2 = $this->session->userdata('tanggal2');
        if ($tanggal2 == '') {
            $data['hari2'] = $ttgl;
        } else {
            $data['hari2'] = $tanggal2;
        }
        
        if( $this->session->userdata('idrool') > 2){
           $idchapter = $this->session->userdata('idchapter');
           $data['listkurir'][$idchapter] = $this->crudmodel->getKurirName($idchapter); 
        }else{
        $lskat = $this->db->get('v_chapter')->result();
        $num_row = $this->db->get('v_chapter')->num_rows();
        $data['listkurir'][0] = "All Chapter ...";
        if ($num_row > 0) {
            foreach ($lskat as $row) {
                $data['listkurir'][$row->id_chapter] = $row->namachapter;
            }
        }
        }
        $lsshipp = $this->db->get('v_jabatan')->result();
        $num_row = $this->db->get('v_jabatan')->num_rows();
        $data['listshipp'][0] = "All Jabatan ...";
        if ($num_row > 0) {
            foreach ($lsshipp as $row) {
                $data['listshipp'][$row->id_jabatan] = $row->nama;
            }
        }

        $kurir = $this->session->userdata('rekurir');
        $shipp = $this->session->userdata('reshipp');
        $dawal = $this->session->userdata('redawal');
        $dakhir = $this->session->userdata('redakhir');
        $tanggalReport = $this->session->userdata('reJudul');

        if ($this->session->userdata('caridata') == 'crReport') {
            $kurir = $this->session->userdata('rekurir');
            $shipp = $this->session->userdata('reshipp');
            $dawal = $this->session->userdata('redawal');
            $dakhir = $this->session->userdata('redakhir');
            $tanggalReport = $this->session->userdata('reJudul');
        } else {
            $kurir = 0;
            $shipp = 0;
            $tgl = date('Y/m/d');
            $dawal = time($tgl);
            $dakhir = time($tgl);
            $tanggalReport = "";
        }

        $data['title'] = $this->title . "  " . $tanggalReport;

//        echo $tanggalReport;
        $uri_segment = 3;
        $offset = $this->uri->segment($uri_segment);

        $mDatalist = $this->crudmodel->list_reportregul('v_regulmember', $this->limit, $offset, $dawal, $dakhir, $kurir)->result();
        $numRow = $this->crudmodel->count_reportregul('v_regulmember', $dawal, $dakhir, $kurir)->num_rows();
        if ($numRow > 0) {
            $config['base_url'] = site_url('reportregul/listdata');
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
                    array('data' => 'No', 'style' => 'width:3%'), 
                    array('data' => 'Nopung', 'style' => 'width:10%'), 
                    array('data' => 'Nama', 'style' => 'width:10%'), 
                    array('data' => 'Chapter', 'style' => 'width:25%'),
                    array('data' => 'No Polisi', 'style' => 'width:7%'),
                    array('data' => 'Provinsi', 'style' => 'width:15%'),
                    array('data' => 'Kabupaten', 'style' => 'width:20%'));
            $i = 0 + $offset;
            foreach ($mDatalist as $sDataList) {
//                if ($this->session->userdata('access') == '257') {
                    $this->table->add_row(++$i, anchor('regulmember/action/edit/' . $sDataList->id_member, $sDataList->nopung), $sDataList->nama,$sDataList->namachapter, $sDataList->nopolisi, $sDataList->provinsi,$sDataList->kabupaten
//                            anchor($this->tabel . '/action/edit/' . $sDataList->id_barang, '<i class="icon ion-edit"></i>', array('class' => "edit-row", 'data-original-title' => 'Edit')) . "&nbsp&nbsp&nbsp" .
//                            anchor($this->tabel . '/action/delete/' . $sDataList->id_barang, '<i class="icon ion-trash-a"></i>', array('class' => "delete-row", 'data-original-title' => 'Delete', 'onclick' => "return confirm('Anda yakin akan menghapus data ini?')"))
                    );
//                }
//                else if ($this->session->userdata('access') == '100') {
//                    $this->table->add_row(++$i, '<img src="' . base_url() . 'uploads/kurir_image/' . $sDataList->photokurir . '" class="wd-40" alt="Image">', anchor($this->tabel . '/action/edit/' . $sDataList->id_kurir, $sDataList->kode_kurir), $sDataList->nama, $sDataList->ketetangan, $sDataList->userlogin, $sDataList->nomor_kend
//                    );
//                }
            }

            $data['table'] = $this->table->generate();
        } else {
            $data['message'] = 'Tidak ditemukan satupun data !';
        }
        $data['link'] = array('link_add' => anchor('reportexcel/cetakexcel/000', '<div><i class="icon ion-document-text"></i></div>', 'class="btn btn-outline-success btn-icon mg-r-20"'),
            'link_print' => anchor($this->tabel . '/action/add', 'Print', 'class="btn btn-success btn-small hidden-phone"'));
        $this->load->view('tempfroms', $data);
    }

    function searchdata() {
        $this->session->set_userdata('caridata', 'crReport');
//        $this->session->set_userdata('finds', $this->input->post('lcfinds'));
//        $this->session->set_userdata('findt', $this->input->post('lcfindt'));

        $tgl1 = date('d', strtotime($this->input->post('lctanggal1')));
        $tgl2 = date('d', strtotime($this->input->post('lctanggal2')));
        $mon1 = date('m',strtotime($this->input->post('lctanggal1')));
        $mon2 = date('m',strtotime($this->input->post('lctanggal2')));
        $thn1 = date('Y',strtotime($this->input->post('lctanggal1')));
        $thn2 = date('Y',strtotime($this->input->post('lctanggal2')));

        $kurir = $this->input->post('lckurir');
        $shipp = $this->input->post('lcshipp');

        $tglawal = $thn1 . "/" . $mon1 . "/" . $tgl1;
        $tglakhir = $thn2 . "/" . $mon2 . "/" . $tgl2;
        
        $viewtglawal = $tgl1 . "/" . $mon1 . "/" .$thn1; 
        $viewtglakhir = $tgl2 . "/" . $mon2 . "/" .$thn2; 
     
        $dawal = strtotime($tglawal);
        $dakhir = strtotime($tglakhir);
//        echo "tgl awal  :".date("Y-m-d H:i:s", $dawal);
//        echo "tgl awal d  :".$dawal;
//        echo "<br/>";
//        echo "time awal  :".time($tglawal);

        $kurirNama = "";
        $shippKet = "";
        if ($kurir != 0) {
            $kurirNama = "Chapter : " . $this->crudmodel->getKurirName($kurir);
        }
       
        $tanggalReport = "Date : " . $viewtglawal . " TO " . $viewtglakhir . "  " . $kurirNama;
        
//        echo $tanggalReport;

        $this->session->set_userdata('caridata', 'crReport');
        $this->session->set_userdata('rekurir', $kurir);
        $this->session->set_userdata('reshipp', $shipp);
        $this->session->set_userdata('redawal', $dawal);
        $this->session->set_userdata('redakhir', $dakhir);
        $this->session->set_userdata('reJudul', $tanggalReport);

//        $this->crudmodel->list_report('v_barang', $this->limit, $offset, $dawal,$dakhir,$kurir,$shipp)->result();
        redirect('reportregul');
    }

   
    
    

}
