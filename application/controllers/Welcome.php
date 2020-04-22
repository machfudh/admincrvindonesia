<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
 function __construct() {
        parent::__construct();
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
    }

    var $limit = 10;
    var $title = 'Member';
    var $linkweb = 'member';
    var $titlemenu = 'Member ';
    var $tabel = 'member';
    
      function index() {
//          $this->load->view('welcome_message');
  
        $this->listdata();
    }

    function listdata($offset = 0) {
      
        $data['titlemenu'] = 'Dashboard';
//        $data['main_view'] = 'report/tabel';
        $data['form_action'] = site_url('welcome/searchdata');
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
            $data['hari'] = date('d');
        } else {
            $data['hari'] = $tanggal1;
        }
//        $tanggal2 = $this->session->userdata('tanggal2');
//        if ($tanggal2 == '') {
//            $data['hari2'] = $ttgl;
//        } else {
//            $data['hari2'] = $tanggal2;
//        }
        $lskat = $this->db->get('v_chapter')->result();
        $num_row = $this->db->get('chapter')->num_rows();
        $data['listchapter'][0] = "All Chapter ...";
        if ($num_row > 0) {
            foreach ($lskat as $row) {
                $data['listchapter'][$row->id_chapter] = $row->namachapter;
            }
        }
        $lsshipp = $this->db->get('provinsi')->result();
        $num_row = $this->db->get('provinsi')->num_rows();
        $data['listpropinsi'][0] = "All provinsi ...";
        if ($num_row > 0) {
            foreach ($lsshipp as $row) {
                $data['listpropinsi'][$row->id] = $row->provinsi;
            }
        }

        $kurir = $this->session->userdata('tokurir');
        $shipp = $this->session->userdata('toshipp');
        $dawal = $this->session->userdata('todawal');
        $dakhir = $this->session->userdata('todakhir');
        $tanggalReport = $this->session->userdata('toJudul');

        if ($this->session->userdata('caridata') == 'crdReport') {
            $kurir = $this->session->userdata('tokurir');
            $shipp = $this->session->userdata('toshipp');
            $dawal = $this->session->userdata('todawal');
            $dakhir = $this->session->userdata('todakhir');
            $tanggalReport = $this->session->userdata('toJudul');
        } else {
            $kurir = 0;
            $shipp = 0;
//            $tgl = date('Y/m/d');
//             $tglawal = $thn . "/" . $mon . "/" . $tgl1 ." 00:00:00";
//        $tglakhir = $thn . "/" . $mon . "/" . $tgl2 ." 23:59:59";
            $tgl = $tahun."/".$bulan."/".$tanggal1." 00:00:00";
            $dawal =  strtotime(date('Y')."/".date('m')."/".date('d')." 00:00:00");
            $dakhir = strtotime(date('Y')."/".date('m')."/".date('d')." 23:59:59");
            $tanggalReport = "";
        }

        $data['title'] = $this->title . "  " . $tanggalReport;

        $uri_segment = 3;
        $offset = $this->uri->segment($uri_segment);
        $lcToday = strtotime(date('Y')."/".date('m')."/".date('d')." 00:00:00");
        $lcTodax = strtotime(date('Y')."/".date('m')."/".date('d')." 23:59:59");
        $lcTomon = strtotime(date('Y')."/".date('m')."/".date('d')." 23:59:59");
        $data['lctoday'] = $this->authmodel->indonesian_date();
        
        $data['dataInproccess'] = $this->crudmodel->list_inpro('v_newmember',1)->num_rows();
        $data['danaInproccess'] = 0;
        if($this->crudmodel->list_inpro('v_newmember',1)->num_rows() > 0) {
            foreach ($this->crudmodel->list_inpro('v_newmember', 1)->result() as $inrow){
                $data['danaInproccess'] =  $data['danaInproccess'];
            } 
        }
        $data['dataSuccess'] = $this->crudmodel->list_today('v_membertoday',$lcToday, $lcTodax,2)->num_rows();
        $data['danaSuccess'] = 0;
        if($this->crudmodel->list_today('v_membertoday', $lcToday, $lcTodax,2)->num_rows() > 0) {
            foreach ($this->crudmodel->list_today('v_membertoday', $lcToday, $lcTodax,2)->result() as $inrow){
                $data['danaSuccess'] = $data['danaSuccess'] ;
            } 
        }
        $data['dataReturn'] = $this->crudmodel->list_inpro('v_member',3)->num_rows();
        $data['danaReturn'] = 0;
        if($this->crudmodel->list_inpro('v_member',3)->num_rows() > 0) {
            foreach ($this->crudmodel->list_inpro('v_member',3)->result() as $inrow){
                $data['danaReturn'] = $data['danaReturn'] ;
            } 
        }
        $mDatalist = $this->crudmodel->list_retoday('v_member', $this->limit, $offset, $dawal, $dakhir, $kurir, $shipp)->result();
        $numRow = $this->crudmodel->count_retoday('v_member', $dawal, $dakhir, $kurir, $shipp)->num_rows();
//        $mDatalist = $this->crudmodel->list_reportinpro('v_baranginpro', $this->limit, $offset, $dawal, $dakhir, $kurir, $shipp)->result();
//        $numRow = $this->crudmodel->count_reportinpro('v_baranginpro', $dawal, $dakhir, $kurir, $shipp)->num_rows();
        if ($numRow > 0) {
            $config['base_url'] = site_url('welcome/listdata');
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
                    array('data' => 'No', 'style' => 'width:3%'), 
                    array('data' => 'Nopung', 'style' => 'width:10%'), 
                    array('data' => 'Nama', 'style' => 'width:10%'), 
                    array('data' => 'Chapter', 'style' => 'width:25%'),
                    array('data' => 'No Polisi', 'style' => 'width:7%'),
                    array('data' => 'Provinsi', 'style' => 'width:15%'),
                    array('data' => 'Kabupaten', 'style' => 'width:20%'));
            $i = 0 + $offset;
            foreach ($mDatalist as $sDataList) {
                if ($this->session->userdata('access') == '257') {
                     $this->table->add_row(++$i, anchor('regulmember/action/edit/' . $sDataList->id_member, $sDataList->nopung), $sDataList->nama,$sDataList->namachapter, $sDataList->nopolisi, $sDataList->provinsi,$sDataList->kabupaten
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
//        $data['link'] = array('link_add' => anchor('reportexcel/cetakexcel', '<div><i class="icon ion-document-text"></i></div>', 'class="btn btn-outline-success btn-icon mg-r-20"'),
//            'link_print' => anchor($this->tabel . '/action/add', 'Print', 'class="btn btn-success btn-small hidden-phone"'));
        
        $this->load->view('tempdash', $data);
    }

    function searchdata() {
        $this->session->set_userdata('caridata', 'crdReport');
//        $this->session->set_userdata('finds', $this->input->post('lcfinds'));
//        $this->session->set_userdata('findt', $this->input->post('lcfindt'));

        $tgl1 = $this->input->post('lctanggal1');
        $mon = $this->input->post('lcbulan');
        $thn = $this->input->post('lctahun');

        $kurir = $this->input->post('lckurir');
        $shipp = $this->input->post('lcshipp');

        $tglawal = $thn . "/" . $mon . "/" . $tgl1 ." 00:00:00";
        $tglakhir = $thn . "/" . $mon . "/" . $tgl2 ." 23:59:59";
//        echo $tgl1;
//        echo $mon;
//        echo $thn;
        $dawal = strtotime($tglawal);
        $dakhir = strtotime($tglawal);
//        echo "tgl awal  :".date("Y-m-d H:i:s", $dawal);
//        echo "tgl awal d  :".$dawal;
//        echo "<br/>";
//        echo "time awal  :".time($tglawal);

//        $kurirNama = "";
//        $shippKet = "";
//        if ($kurir != 0) {
//            $kurirNama = "Courier : " . $this->crudmodel->getKurirName($kurir);
//        }
//        if ($shipp != 0) {
//            $shippKet = " Status : " . $this->crudmodel->getShippKet($shipp);
//        }
//        $tanggalReport = "Date : " . $tgl1 . "-" . $mon . "-" . $thn . "  " . $kurirNama . " " . $shippKet;

        $tanggalReport ="";
        $this->session->set_userdata('caridata', 'crdReport');
        $this->session->set_userdata('tokurir', $kurir);
        $this->session->set_userdata('toshipp', $shipp);
        $this->session->set_userdata('todawal', $dawal);
//        $this->session->set_userdata('todakhir', $dakhir);
        $this->session->set_userdata('toJudul', $tanggalReport);

//        $this->crudmodel->list_report('v_barang', $this->limit, $offset, $dawal,$dakhir,$kurir,$shipp)->result();
        redirect('welcome');
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

        $this->load->view('tempdash', $data);
//               }else{
//                   redirect('login');
//               }
    }

}
