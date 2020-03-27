<?php
//include APPPATH.'third_party/PHPExcel/PHPExcel.php';
        
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Reportexcel
 *
 * @author user
 */
class Reportexcelnew extends CI_Controller {

    function __construct() {
        parent::__construct();
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
    }

    function cetakexcel($code) {

        
        // Panggil class PHPExcel nya    
        $excel = new PHPExcel();    

       // Settingan awal fil excel    
         $excel->getProperties()->setCreator('My Notes Code')->setLastModifiedBy('My Notes Code')->setTitle("Data Siswa")->setSubject("Siswa")->setDescription("Laporan Semua Data Siswa")->setKeywords("Data Siswa");    

       // Buat sebuah variabel untuk menampung pengaturan style dari header tabel    
          $style_col = array(
              'font' => array('bold' => true), // Set font nya jadi bold
              'alignment' => array(
                 'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
                 'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
                  ),
               'borders' => array(
                   'top' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), // Set border top dengan garis tipis
                   'right' => array('style'  => PHPExcel_Style_Border::BORDER_THIN),  // Set border right dengan garis tipis
                   'bottom' => array('style'  => PHPExcel_Style_Border::BORDER_THIN), // Set border bottom dengan garis tipis
                   'left' => array('style'  => PHPExcel_Style_Border::BORDER_THIN) // Set border left dengan garis tipis 
                    )
              );
        
          
              $excel->setActiveSheetIndex(0)->setCellValue('A1', "DATA SISWA"); // Set kolom A1 dengan tulisan "DATA SISWA"
              $excel->getActiveSheet()->mergeCells('A1:E1'); // Set Merge Cell pada kolom A1 sampai E1
              $excel->getActiveSheet()->getStyle('A1')->getFont()->setBold(TRUE); // Set bold kolom A1
              $excel->getActiveSheet()->getStyle('A1')->getFont()->setSize(15); // Set font size 15 untuk kolom A1
          
//        $objPHPexcel = PHPExcel_IOFactory::load(APPPATH . "../excel/report.xls");

//        $objWorksheet = $objPHPexcel->getActiveSheet();
        
        
//        $this->dump($objWorksheet, true);

        if ($code == 100) {
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
                $shipp = 0;
                $tgl = date('Y/m/d');
                $dawal = time($tgl);
                $dakhir = time($tgl);
                $tanggalReport = "";
            }
             if( $shipp == 2 ){
                $reportdata = $this->crudmodel->count_reportinpro2('v_baranginpro', $dawal, $dakhir, $kurir, $shipp)->result();
                $reportnumrow = $this->crudmodel->count_reportinpro2('v_baranginpro', $dawal, $dakhir, $kurir, $shipp)->num_rows();
             }else{
                 $reportdata = $this->crudmodel->count_reportinpro3('v_baranginpro', $dawal, $dakhir, $kurir, $shipp)->result();
                 $reportnumrow = $this->crudmodel->count_reportinpro3('v_baranginpro', $dawal, $dakhir, $kurir, $shipp)->num_rows();
             }
        } else {
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
            $reportdata = $this->crudmodel->count_report('v_member', $dawal, $dakhir, $kurir, $shipp)->result();
            $reportnumrow = $this->crudmodel->count_report('v_member', $dawal, $dakhir, $kurir, $shipp)->num_rows();
        }

//        if ($reportnumrow > 0) {
            
            
         
        
            
//            $this->dump($reportnumrow, true);
            
//            $objWorksheet->setCellValue('B3', "Report " . $tanggalReport);
//            $no = 1;
//            $nbaris = 6;
//            foreach ($reportdata as $row) {
//                $this->dump($row->kabupaten, true);
//                $objWorksheet->setCellValue('B' . $nbaris, $no);
//                $objWorksheet->setCellValue('C' . $nbaris, $row->nopung);
//                $objWorksheet->setCellValue('D' . $nbaris, $row->nama);
//                $objWorksheet->setCellValue('E' . $nbaris, $row->namachapter);
//                $objWorksheet->setCellValue('F' . $nbaris, $row->nopolisi);
//                $objWorksheet->setCellValue('G' . $nbaris, $row->jabatan);
//                $objWorksheet->setCellValue('H' . $nbaris, $row->provinsi);
//                $objWorksheet->setCellValue('I' . $nbaris, $row->kabupaten);
//                $objWorksheet->setCellValue('J' . $nbaris, trim($row->aktifdate != 0 ? date("d-m-Y", $row->aktifdate ) : ""));
                
//                $no++;
//                $nbaris++;
//            }
//        }


//        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
//        header('Content-Disposition: attachment;filename="report.xls"');
//        header('Cache-Control: max-age=0');
//
//        $objWriter = PHPExcel_IOFactory::createWriter($objPHPexcel, "Excel2007");
//        $objWriter->save('php://output');
//        $objPHPexcel->disconnectWorksheets();
//        unset($objPHPexcel);
//        
        
        $excel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER); // Set text center untuk kolom A1    
       // Buat header tabel nya pada baris ke 3
        
        $excel->setActiveSheetIndex(0)->setCellValue('A3', "NO"); // Set kolom A3 dengan tulisan "NO"
        $excel->setActiveSheetIndex(0)->setCellValue('B3', "NIS"); // Set kolom B3 dengan tulisan "NIS"
        $excel->setActiveSheetIndex(0)->setCellValue('C3', "NAMA"); // Set kolom C3 dengan tulisan "NAMA"
        $excel->setActiveSheetIndex(0)->setCellValue('D3', "JENIS KELAMIN"); // Set kolom D3 dengan tulisan "JENIS KELAMIN"
        $excel->setActiveSheetIndex(0)->setCellValue('E3', "ALAMAT"); // Set kolom E3 dengan tulisan "ALAMAT"
        
        // Apply style header yang telah kita buat tadi ke masing-masing kolom header
        $excel->getActiveSheet()->getStyle('A3')->applyFromArray($style_col);
        $excel->getActiveSheet()->getStyle('B3')->applyFromArray($style_col);    
        $excel->getActiveSheet()->getStyle('C3')->applyFromArray($style_col);    
        $excel->getActiveSheet()->getStyle('D3')->applyFromArray($style_col);    
        $excel->getActiveSheet()->getStyle('E3')->applyFromArray($style_col);
        
        
        
        
        
         // Set width kolom    
         $excel->getActiveSheet()->getColumnDimension('A')->setWidth(5); // Set width kolom A    
         $excel->getActiveSheet()->getColumnDimension('B')->setWidth(15); // Set width kolom B    
         $excel->getActiveSheet()->getColumnDimension('C')->setWidth(25); // Set width kolom C
         $excel->getActiveSheet()->getColumnDimension('D')->setWidth(20); // Set width kolom D
         $excel->getActiveSheet()->getColumnDimension('E')->setWidth(30); // Set width kolom E
         
         // Set height semua kolom menjadi auto (mengikuti height isi dari kolommnya, jadi otomatis)
         $excel->getActiveSheet()->getDefaultRowDimension()->setRowHeight(-1);    

        // Set orientasi kertas jadi LANDSCAPE
        $excel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);
        
        // Set judul file excel nya
        $excel->getActiveSheet(0)->setTitle("Laporan Data Siswa");
        $excel->setActiveSheetIndex(0);
        
        
//                $this->dump($excel, true);
        
        // Proses file excel
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Data Siswa.xlsx"'); // Set nama file excel nya
        header('Cache-Control: max-age=0');
        
        $write = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');
        $write->save('php://output');
        
    }

    
     function dump($var, $die = FALSE) {
        echo '<pre>';
        var_dump($var);
        echo '</pre>';
        if ($die)
            die;
    }
}
