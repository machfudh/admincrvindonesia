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
class Reportinpro extends CI_Controller {

    function __construct() {
        parent::__construct();
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
    }

    var $limit = 10;
    var $title = 'Report by Date Proccess ';
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
        $data['form_action'] = site_url('reportinpro/searchdata');
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
        $lskat = $this->db->get('kurir')->result();
        $num_row = $this->db->get('kurir')->num_rows();
        $data['listkurir'][0] = "All Courier ...";
        if ($num_row > 0) {
            foreach ($lskat as $row) {
                $data['listkurir'][$row->id_kurir] = $row->nama;
            }
        }
        $lsshipp = $this->db->get('statusshipp')->result();
        $num_row = $this->db->get('statusshipp')->num_rows();
//        $data['listshipp'][0] = "All Shippment ...";
        if ($num_row > 0) {
            foreach ($lsshipp as $row) {
                if($row->id_statusshipp > 1 ){
                    $data['listshipp'][$row->id_statusshipp] = $row->keterangan;
                }     
            }
        }

        $kurir = $this->session->userdata('reinkurir');
        $shipp = $this->session->userdata('reinshipp');
        $dawal = $this->session->userdata('reindawal');
        $dakhir = $this->session->userdata('reindakhir');
        $tanggalReport = $this->session->userdata('reinJudul');

        if ($this->session->userdata('caridata') == 'crinReport') {
            $kurir = $this->session->userdata('reinkurir');
            $shipp = $this->session->userdata('reinshipp');
            $dawal = $this->session->userdata('reindawal');
            $dakhir = $this->session->userdata('reindakhir');
            $tanggalReport = $this->session->userdata('reinJudul');
        } else {
            $kurir = 0;
            $shipp = 2;
            $tgl = date('Y/m/d');
            $dawal = time($tgl);
            $dakhir = time($tgl);
            $tanggalReport = "";
        }

        $data['title'] = $this->title . "  " . $tanggalReport;

        $uri_segment = 3;
        $offset = $this->uri->segment($uri_segment);

        if( $shipp == 2 ){
        $mDatalist = $this->crudmodel->list_reportinpro2('v_baranginpro', $this->limit, $offset, $dawal, $dakhir, $kurir, $shipp)->result();
        $numRow = $this->crudmodel->count_reportinpro2('v_baranginpro', $dawal, $dakhir, $kurir, $shipp)->num_rows();
        }else{
        $mDatalist = $this->crudmodel->list_reportinpro3('v_baranginpro', $this->limit, $offset, $dawal, $dakhir, $kurir, $shipp)->result();
        $numRow = $this->crudmodel->count_reportinpro3('v_baranginpro', $dawal, $dakhir, $kurir, $shipp)->num_rows();
        }
        if ($numRow > 0) {
            $config['base_url'] = site_url('reportinpro/listdata');
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
                    array('data' => 'No', 'style' => 'width:3%'), array('data' => 'Seg No', 'style' => 'width:10%'), array('data' => 'Noref', 'style' => 'width:10%'), array('data' => 'Name'), array('data' => 'Address', 'style' => 'width:30%'), array('data' => 'Status', 'style' => 'width:10%'), array('data' => 'Courier', 'style' => 'width:10%'));
            $i = 0 + $offset;
            foreach ($mDatalist as $sDataList) {
                if ($this->session->userdata('access') == '257') {
                    $this->table->add_row(++$i, anchor('report/viewbarang/' . $sDataList->id_barang, $sDataList->seqno), $sDataList->noref, $sDataList->nama, $sDataList->alamat1, $sDataList->statusketerangan, $sDataList->kurirnama
//                            anchor($this->tabel . '/action/edit/' . $sDataList->id_barang, '<i class="icon ion-edit"></i>', array('class' => "edit-row", 'data-original-title' => 'Edit')) . "&nbsp&nbsp&nbsp" .
//                            anchor($this->tabel . '/action/delete/' . $sDataList->id_barang, '<i class="icon ion-trash-a"></i>', array('class' => "delete-row", 'data-original-title' => 'Delete', 'onclick' => "return confirm('Anda yakin akan menghapus data ini?')"))
                    );
                }
//                else if ($this->session->userdata('access') == '100') {
//                    $this->table->add_row(++$i, '<img src="' . base_url() . 'uploads/kurir_image/' . $sDataList->photokurir . '" class="wd-40" alt="Image">', anchor($this->tabel . '/action/edit/' . $sDataList->id_kurir, $sDataList->kode_kurir), $sDataList->nama, $sDataList->ketetangan, $sDataList->userlogin, $sDataList->nomor_kend
//                    );
//                }
            }

            $data['table'] = $this->table->generate();
        } else {
            $data['message'] = 'Tidak ditemukan satupun data !';
        }
        $data['link'] = array('link_add' => anchor('reportexcel/cetakexcel/100', '<div><i class="icon ion-document-text"></i></div>', 'class="btn btn-outline-success btn-icon mg-r-20"'),
            'link_print' => anchor($this->tabel . '/action/add', 'Print', 'class="btn btn-success btn-small hidden-phone"'));
        $this->load->view('tempfroms', $data);
    }

    function searchdata() {
        $this->session->set_userdata('caridata', 'crinReport');
//        $this->session->set_userdata('finds', $this->input->post('lcfinds'));
//        $this->session->set_userdata('findt', $this->input->post('lcfindt'));

//        $tgl1 = $this->input->post('lctanggal1');
//        $tgl2 = $this->input->post('lctanggal2');
//        $mon = $this->input->post('lcbulan');
//        $thn = $this->input->post('lctahun');
//
//        $kurir = $this->input->post('lckurir');
//        $shipp = $this->input->post('lcshipp');
//
//        $tglawal = $thn . "/" . $mon . "/" . $tgl1 ."00:00:00";
//        $tglakhir = $thn . "/" . $mon . "/" . $tgl2 ."23:59:59";
//        echo $tgl1;
//        echo $mon;
//        echo $thn;
        
        $tgl1 = date('d', strtotime($this->input->post('lctanggal1')));
        $tgl2 = date('d', strtotime($this->input->post('lctanggal2')));
        $mon1 = date('m',strtotime($this->input->post('lctanggal1')));
        $mon2 = date('m',strtotime($this->input->post('lctanggal2')));
        $thn1 = date('Y',strtotime($this->input->post('lctanggal1')));
        $thn2 = date('Y',strtotime($this->input->post('lctanggal2')));

        $kurir = $this->input->post('lckurir');
        $shipp = $this->input->post('lcshipp');

        $tglawal = $thn1 . "/" . $mon1 . "/" . $tgl1 ."00:00:00";
        $tglakhir = $thn2 . "/" . $mon2 . "/" . $tgl2 . "23:59:59";
        
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
            $kurirNama = "Courier : " . $this->crudmodel->getKurirName($kurir);
        }
        if ($shipp != 0) {
            $shippKet = " Status : " . $this->crudmodel->getShippKet($shipp);
        }
//        $tanggalReport = "Date : " . $tgl1 . " TO " . $tgl2 . "-" . $mon . "-" . $thn . "  " . $kurirNama . " " . $shippKet;

        $tanggalReport = "Date : " . $viewtglawal . " TO " . $viewtglakhir . "  " . $kurirNama . " " . $shippKet;
        
        $this->session->set_userdata('caridata', 'crinReport');
        $this->session->set_userdata('reinkurir', $kurir);
        $this->session->set_userdata('reinshipp', $shipp);
        $this->session->set_userdata('reindawal', $dawal);
        $this->session->set_userdata('reindakhir', $dakhir);
        $this->session->set_userdata('reinJudul', $tanggalReport);

//        $this->crudmodel->list_report('v_barang', $this->limit, $offset, $dawal,$dakhir,$kurir,$shipp)->result();
        redirect('reportinpro');
    }

    function viewbarang($id) {
        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['main_view'] = 'barang/form';
        $data['form_action'] = site_url('#');


//                $this->db->where('id_barang', $id);
//                $this->db->get($this->tabel);
        $row = $this->crudmodel->get_view_by_id($this->tabel, $id)->row();
        $data['data']['lcseqno'] = $row->seqno;
        $data['data']['lcnoref'] = $row->noref;
        $data['data']['lcnama'] = $row->nama;
        $data['data']['lcalamat1'] = $row->alamat1;
        $data['data']['lcalamat2'] = $row->alamat2;
        $data['data']['lcalamat3'] = $row->alamat3;
        $data['data']['lckota'] = $row->kota;
        $data['data']['lctgl_upload'] = $row->tgl_upload != "" ? date("d-m-Y", $row->tgl_upload) : "";
        $data['data']['lctype'] = $row->type;
        $data['data']['lcserv_type'] = $row->serv_type;
        $data['data']['lckurirnama'] = $row->kurirnama;
        $data['data']['lcstatusketerangan'] = $row->statusketerangan;
        $data['data']['lcwaktu_ambil'] = $row->waktu_ambil != "" ? date("d-m-Y H:i:s", $row->waktu_ambil) : "";
        $data['data']['lcwaktu_diterima'] = $row->waktu_diterima != "" ? date("d-m-Y H:i:s", $row->waktu_diterima) : "";
        $data['data']['lcpenerima'] = $row->penerima;
        $data['data']['lcwaktu_dikembalikan'] = $row->waktu_dikembalikan != "" ? date("d-m-Y H:i:s", $row->waktu_dikembalikan) : "";
        $data['data']['lccatatan'] = $row->catatan;
        $data['data']['lcstatretket'] = $row->statretket;
        $data['data']['lcstatiket'] = $row->statiket;

        $this->load->view('tempfroms', $data);
//               }else{
//                   redirect('login');
//               }
    }

}
