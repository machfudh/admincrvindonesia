<?php

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
class Reportexcel extends CI_Controller {

    function __construct() {
        parent::__construct();
//        }
        $this->load->model("crudmodel");
        $this->load->model("authmodel");
    }

    function cetakexcel($code) {

        $objPHPexcel = new PHPExcel(); // PHPExcel_IOFactory::load(APPPATH . "../excel/report.xls");

        $objWorksheet = $objPHPexcel->getActiveSheet();
        
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
        } else if ($code == 000) {
//           $this->dump("Masuk ke 100 :".$code, true);
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
        }else if ($code == 001) {
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
            $reportdata = $this->crudmodel->count_report('v_newmember', $dawal, $dakhir, $kurir, $shipp)->result();
            $reportnumrow = $this->crudmodel->count_report('v_newmember', $dawal, $dakhir, $kurir, $shipp)->num_rows();
        }

        $objWorksheet->setCellValue('B1', "Report ");
        if ($reportnumrow > 0) {
            
//            $this->dump($reportnumrow, true);
            
//            $objWorksheet->setCellValue('B1', "Report ");
            $no = 1;
            $nbaris = 6;
            foreach ($reportdata as $row) {
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
                
                $no++;
                $nbaris++;
            }
        }


        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="report.xls"');
        header('Cache-Control: max-age=0');
        // If you’re serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

// If you’re serving to IE over SSL, then the following may be needed
        header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
        header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header ('Pragma: public'); // HTTP/1.0  
//        $this->dump($objWriter, true);

        $objWriter = PHPExcel_IOFactory::createWriter($objPHPexcel, "Excel2007");
//        $this->dump($code, true);
        $objWriter->save('php://output');
//        $this->dump($objWriter, true);
        $objPHPexcel->disconnectWorksheets();
        unset($objPHPexcel);
    }

    
     function dump($var, $die = FALSE) {
        echo '<pre>';
        var_dump($var);
        echo '</pre>';
        if ($die)
            die;
    }
}
