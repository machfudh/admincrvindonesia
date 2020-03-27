<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of laporan
 *
 * @author HP
 */
class Laporanin extends CI_Controller {

    function __construct() {
        parent::__construct();
//              $this->load->model('laporanmodel');
//              $this->load->model('dashboardmodel');
//              $this->load->library('excel_reader2');
    }

    var $limit = 10;
    var $title = 'Data laporan';
    var $titlemenu = 'Data';

    function index() {
//              if ($this->session->userdata('access') >= $this->menumodel->aksesmenu("laporan")->row()->access){
        $this->addlaporan();
//              }else{
//                  redirect('login');
//              }
    }

    function addlaporan() {
//              if ($this->session->userdata('access') >= $this->menumodel->aksesmenu("laporan")->row()->access){
//               $data['totalkel'] = $this->dashboardmodel->uangjalankel()->row()->totalket;
//                  $data['menu'] = $this->menumodel->listmenu_bar("laporan");
        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['title_pro'] = 'Add laporan';
        $data['main_view'] = 'laporan/laporanform';
        $data['form_action'] = site_url('laporanin/savelaporan');
        $data['link'] = array('link_back' => anchor('laporan/', 'Back', 'class="uibutton icon answer"'));

        //               'link_print' => anchor('laporan/printlaporan','Print ','class="uibutton special"'));
//              $data['totalkel'] = $this->dashboardmodel->totalpengaduanbulan();
//              $data['totalsel'] = $this->dashboardmodel->totalselesai()->num_rows();
        $this->load->view('templates', $data);
//              }else{
//                  redirect('login');
//              }
    }

    function savelaporan() {
//              if ($this->session->userdata('access') >= $this->menumodel->aksesmenu("laporan")->row()->access){
//              $data['menu'] = $this->menumodel->listmenu_bar("laporan");
        $data['title'] = $this->title;
        $data['title_pro'] = 'Save';
        $data['main_view'] = 'laporan/addlaporan';
        $data['form_action'] = site_url('laporanin/savelaporan');
        $data['link'] = array('link_back' => anchor('laporan/', 'Back', 'class="uibutton icon answer"'));

//               include_once ( APPPATH."third_party/PHPExcel.php");
//        include APPPATH . 'third_party/PHPExcel.php';
        // membaca file excel yang diupload
//        $data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);
//        $loadexcel = $excelreader->load('excel/Book1.xlsx');
//        $sheet = $loadexcel->getActiveSheet()->toArray(null, true, true, true);

        $file = $_FILES['userfile']['tmp_name'];
        $this->load->library('excel');
        $objPHPExcel = PHPExcel_IOFactory::load($file);

        $cell_collection = $objPHPExcel->getActiveSheet()->getCellCollection();

//extract to a PHP readable array format
        foreach ($cell_collection as $cell) {
            $column = $objPHPExcel->getActiveSheet()->getCell($cell)->getColumn();
            $row = $objPHPExcel->getActiveSheet()->getCell($cell)->getRow();
            $data_value = $objPHPExcel->getActiveSheet()->getCell($cell)->getValue();


            if ($row == 1) {
                $header[$row][$column] = $data_value;
            } else {
                $arr_data[$row][$column] = $data_value;
            }
        }
        
//        $this->dump($arr_data, true);

        // membaca jumlah baris dari data excel
//        $baris = $data->rowcount($sheet_index = 0);

        $data = $arr_data ;
        $baris = 67;

        // nilai awal counter untuk jumlah data yang sukses dan yang gagal diimport
        $sukses = 0;
        $gagal = 0;

//                $datatabel = array(
//                'chapter' => 'xxxxx',
//                 'kodechapter' => '12' );
//                $this->db->insert('datachapter', $datatabel);
        // import data excel mulai baris ke-2 (karena baris pertama adalah nama kolom)
//        $numrow = 1;
//        
//         foreach ($arr_data as $data) {
//            $this->dump($data, true);
//         }
        
//        $this->dump($arr_data[2["B"], true);
        
        for ($i=2; $i<=$baris; $i++){
            
//            $this->dump($data[$i]["B"], true);
            if ($data[$i]["D"] != null) {

//                $this->dump($data[$i]["F"], true);
//                $bj = $data->val($i, 2);    
                $kode = $data[$i]["B"];
                $bulan = $data[$i]["C"];
                $no = $data[$i]["D"];
                $tahun = $data[$i]["E"];
                $nama = $data[$i]["F"];
                $telpon = $data[$i]["G"];
                $kota = $data[$i]["H"];
                $chapter = $data[$i]["I"];
                $hr = $data[$i]["J"];
                $bl = $data[$i]["K"];
                $th = $data[$i]["L"];
                $dom = $data[$i]["M"];
                $email = $data[$i]["O"];
                $type = $data[$i]["P"];
                $warna = $data[$i]["Q"];
                $plat = $data[$i]["R"];
                
                $this->dump($chapter, false);
                
                $idJabatan = 4;
                
                $this->db->where('chapter', $chapter);
                $tchapter = $this->db->get('datachapter')->row();
                
                $idChapter = $tchapter->kodechapter;
                

                $this->db->where('typeken', $type);
                $tchapter = $this->db->get('datatipe');
                if( $tchapter->num_rows() > 0){
                   $idType = $tchapter->row()->kodetype;
                }else{
                   $idType = 0 ; 
                }
              
                $this->db->where('warna', $warna);
                $tchapter = $this->db->get('datawarna');
                if( $tchapter->num_rows() > 0){
                    $idWarna = $tchapter->row()->kodewarna;
                }else{
                    $idWarna = 0;
                }
                $nono = ltrim($no);
                if (strlen($nono) == 1){
                    $nopung = "000".$nono;
                }elseif(strlen($nono) == 2){
                    $nopung = "00".$nono;
                }elseif(strlen($nono) == 3){
                    $nopung = "0".$nono;
                }elseif(strlen($nono) == 4){
                    $nopung = $nono;
                }
                
                
                $idtahununit = 0;
                if($tahun == '010'){
                  $idtahununit = 11;
                }elseif($tahun == '011'){
                   $idtahununit = 12;  
                }elseif($tahun == '012'){
                   $idtahununit = 13;  
                }elseif($tahun == '013'){
                   $idtahununit = 14;  
                }elseif($tahun == '014'){
                   $idtahununit = 15;  
                }elseif($tahun == '015'){
                   $idtahununit = 16;  
                }elseif($tahun == '016'){
                   $idtahununit = 17;  
                }elseif($tahun == '017'){
                   $idtahununit = 18;  
                }elseif($tahun == '018'){
                   $idtahununit = 19;  
                }elseif($tahun == '019'){
                   $idtahununit = 20;  
                }elseif($tahun == '020'){
                   $idtahununit = 21;  
                }
                
                $noHp = preg_replace("/[^0-9]/", "", $telpon);
                
                $hari = "01";
                if(ltrim($hr) != ""){
                    $hari = $hr; 
                }
                
                $bulan = "01";
                if(ltrim($bl) != ""){
                    $bulan = $bl; 
                }
                
                $tahun = "1971";
                if(ltrim($th) != ""){
                    $tahun = $th; 
                }
                
               $tglawal = $tahun . "/" . $bulan . "/" . $hari;                
               $tgl = strtotime($tglawal);
               
               $platnomor = preg_replace("/[^a-zA-Z0-9]/", "", $plat);
               
                $timeinsert = time();
               
                $this->db->where('nopung', $nopung);
                $tchapter = $this->db->get('member');
                if($tchapter->num_rows() <= 0 ){
                    
                    $datatabel = array(
                    'nama' => $nama,
                    'email' => $email,
                    'hpwa'=> $noHp,
                    'tgllahir' => $tgl,
                    'alamat' => $dom,
                    'idjabatan' => $idJabatan,
                    'idchapter' => $idChapter,
                    'idtahununit' => $idtahununit,
                    'nopolisi' => $platnomor,
                    'idkapasitasunit' => $idType,
                    'idwarnaunit' => $idWarna,
                    'nopung' => $nopung,
                    'aktif' => true,
                    'insertdate' => $timeinsert,
                    'statusregis' => '3'
                    );
                
                $this->db->insert('member', $datatabel);
                
                }
                
                
//                if($tchapter->num_rows() <= 0 ){
//                  $datatabel = array(
//                    'warna' => $warna );
//                  
//                   $this->db->insert('datawarna', $datatabel);
//                }
                
                
                
        }     
        }

        $this->session->set_flashdata('message', ' data berhasil disimpan!');
        redirect('laporanin/');
          
    }

    function dellaporan($id) {
        if ($this->session->userdata('access') > $this->menumodel->aksesmenu("laporan")->row()->access) {
            $this->laporanmodel->dellaporan($id);
            $this->session->set_flashdata('message', ' databerhasil dihapus');
            redirect('laporan');
        } else {
            redirect('login');
        }
    }

    function updlaporan($id) {
//               if ($this->session->userdata('access') > $this->menumodel->aksesmenu("laporan")->row()->access){
//                $data['totalkel'] = $this->dashboardmodel->uangjalankel()->row()->totalket;
//                   $data['menu'] = $this->menumodel->listmenu_bar("laporan");
        $data['title'] = $this->title;
        $data['title_pro'] = 'Update laporan';
        $data['main_view'] = 'laporan/laporanform';
        $data['form_action'] = site_url('laporan/laporanupd');
        $data['link'] = array('link_back' => anchor('laporan/', 'Back', 'class="uibutton icon answer"'),
            'link_add' => anchor('laporan/laporanupd', 'Save', 'class="uibutton icon add"'));

        $data['totalkel'] = $this->dashboardmodel->totalpengaduanbulan();
        $data['totalsel'] = $this->dashboardmodel->totalselesai()->num_rows();
        $zDatalaporan = $this->laporanmodel->idlaporan($id)->row();
//               $this->session->set_userdata('idjk', $id)
        $data['default']['lcid'] = $zDatalaporan->id;
        $data['default']['lcnama'] = $zDatalaporan->nama;
        $data['default']['lcket'] = $zDatalaporan->keterangan;
        $this->load->view('templates', $data);
//               }else{
//                   redirect('login');
//               }
    }

    function laporanupd() {
//              if ($this->session->userdata('access') > $this->menumodel->aksesmenu("laporan")->row()->access){
//              $data['menu'] = $this->menumodel->listmenu_bar("laporan");
        $data['title'] = $this->title;
        $data['title_pro'] = 'Update laporan';
        $data['main_view'] = 'laporan/addlaporan';
        $data['form_action'] = site_url('laporan/laporanupd');
        $data['link'] = array('link_back' => anchor('laporan/', 'Back', 'class="continue"'));
        $idjk = $this->input->post('lcid');
        $datalaporan = array(
            'nama' => $this->input->post('lcnama'),
            'keterangan' => $this->input->post('lcket'),
        );
        $this->laporanmodel->updlaporan($idjk, $datalaporan);
        $this->session->set_flashdata('message', ' data berhasil di update!');
        redirect('laporan');
//              }else{
//                  redirect('login');
//              }
    }

    function namabulan($bulan) {

        $bulankecil = strtolower($bulan);
        $namabulan = "";
        switch ($bulankecil) {

            case "january":
                $namabulan = "01";
                break;
            case "february":
                $namabulan = "02";
                break;
            case "march":
                $namabulan = "03";
                break;
            case "april":
                $namabulan = "04";
                break;
            case "march":
                $namabulan = "05";
                break;
            case "june":
                $namabulan = "06";
                break;
            case "july":
                $namabulan = "07";
                break;
            case "august":
                $namabulan = "08";
                break;
            case "september":
                $namabulan = "09";
                break;
            case "october":
                $namabulan = "10";
                break;
            case "november":
                $namabulan = "11";
                break;
            case "december":
                $namabulan = "12";
                break;
        }

        return $namabulan;
    }

    function getlaporan() {

        $pengId = $this->input->post('pengID');

//            $userId = 1 ;

        $lcData = $this->laporanmodel->idKirimLaporan($pengId)->result();
        $nuData = $this->laporanmodel->idKirimLaporan($pengId)->num_rows();

        $arr = array();
        if ($nuData > 0) {

            $datalaporan = array(
                'status' => "terproses",
            );
            $this->laporanmodel->updlaporan($pengId, $datalaporan);

            foreach ($lcData as $row) {
                $temp = array(
                    "id" => $row->id,
                    "nama" => $row->nama,
                    "topik" => $row->topik_laporan,
                    "tags" => $row->tags,
                    "judul" => $row->judul_laporan,
                    "isi" => $row->isi_laporan,
                    "area" => $row->area,
                    "anonim" => $row->anonim,
                    "sifat" => $row->sifat,
                    "skpd_id" => $row->skpd_id,
                );

                array_push($arr, $temp);
            }

            $data = json_encode($arr);

            echo "{\"lapor\":" . $data . "}";
        } else {
            $data = json_encode($arr);

            echo "{\"lapor\":" . $data . "}";
        }
    }

    function getlaporan2() {

        $pengId = $this->input->post('pengID');

//            $userId = 1 ;

        $lcData = $this->laporanmodel->idProsesLaporan($pengId)->result();
        $nuData = $this->laporanmodel->idProsesLaporan($pengId)->num_rows();

        $arr = array();
        if ($nuData > 0) {

            foreach ($lcData as $row) {
                $temp = array(
                    "id" => $row->id,
                    "nama" => $row->nama,
                    "topik" => $row->topik_laporan,
                    "tags" => $row->tags,
                    "judul" => $row->judul_laporan,
                    "isi" => $row->isi_laporan,
                    "area" => $row->area,
                    "anonim" => $row->anonim,
                    "sifat" => $row->sifat,
                    "skpd_id" => $row->skpd_id,
                );

                array_push($arr, $temp);
            }

            $data = json_encode($arr);

            echo "{\"laporx\":" . $data . "}";
        } else {
            $data = json_encode($arr);

            echo "{\"laporx\":" . $data . "}";
        }
    }

    function dump($var, $die = FALSE) {
        echo '<pre>';
        var_dump($var);
        echo '</pre>';
        if ($die)
            die;
    }

}

/** CodeIgniter By
 *  Pt. nProject Media Solution
 *  http://www.nprojectmedia.com
 */
?>
