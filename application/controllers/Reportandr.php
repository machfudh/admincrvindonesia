<?php

require APPPATH . '/libraries/REST_Controller.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Reportandr
 *
 * @author user
 */
class Reportandr extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->library('helper');
        $this->load->model('accountmodel');
        $this->load->model('authmodel');
    }

    function index_post() {

        $clientid = $this->post('clientid');
        if (empty($clientid))
            $clientid = 0;

        $token = $this->post('token');
        if (empty($token))
            $token = '';

        $tanggal = $this->post('tanggal');
        if (empty($tanggal))
            $tanggal = '';


        $clientid = $this->helper->clearInt($clientid);

        if ($clientid != CLIENT_ID) {
            $result = array("status" => 404, "message" => FALSE);
            $this->authmodel->show_response($result);
            exit;
        }

        $mTanggal = strtotime($tanggal);
        $getidfromtoken = $this->authmodel->tokentoid($token);
        $message = FALSE;
        $priProccess = 0;
        $dataProccess = 0;
        $priSuccess = 0;
        $dataSuccess = 0;
        $priReturn = 0;
        $dataReturn = 0;
        $dataDok = array();

        if ($getidfromtoken != 0 && $tanggal != "") {

            $hasiltgl = explode("-", $tanggal);
            $TglAwal = strtotime($hasiltgl[2] . "/" . $hasiltgl[1] . "/" . $hasiltgl[0] . " 00:00:00");
            $TglAkhir = strtotime($hasiltgl[2] . "/" . $hasiltgl[1] . "/" . $hasiltgl[0] . " 23:59:59");

            $dataReport = $this->authmodel->reporttgl($getidfromtoken, $TglAwal, $TglAkhir)->result();
            $dataNum = $this->authmodel->reporttgl($getidfromtoken, $TglAwal,$TglAkhir)->num_rows();
            $message = TRUE;
            if ($dataNum > 0) {
                foreach ($dataReport as $row) {
                    if ($row->id_statusshipp == 1) {
                        $dataProccess++;
                        $priProccess =+ $row->harga;
                    }
                }
            }
            $dataReport = $this->authmodel->reporttgl2($getidfromtoken, $TglAwal, $TglAkhir)->result();
            $dataNum = $this->authmodel->reporttgl2($getidfromtoken, $TglAwal, $TglAkhir)->num_rows();
            $message = TRUE;
            if ($dataNum > 0) {
                foreach ($dataReport as $row) {
                    if ($row->id_statusshipp == 2) {
                        $dataSuccess++;
                        $priSuccess =+ $row->harga;
                    }
                }
//                $dataReport = $this->authmodel->reporttgl3($getidfromtoken, $TglAwal, $TglAkhir)->result();
//                $dataNum = $this->authmodel->reporttgl3($getidfromtoken, $TglAwal, $TglAkhir)->num_rows();
//                $message = TRUE;
//                if ($dataNum > 0) {
//                    foreach ($dataReport as $row) {
//                        if ($row->id_statusshipp == 3) {
//                            $dataReturn++;
//                            $priReturn += $row->harga;
//                        }
//                    }
//                }
            }
        }

        $dataDok = array(
            'priProccess' => $priProccess,
            'dataProccess' => $dataProccess,
            'priSuccess' => $priSuccess,
            'dataSuccess' => $dataSuccess,
            'priReturn' => $priReturn,
            'dataReturn' => $dataReturn
        );

        $result = array("status" => 200, "message" => $message, 'report' => $dataDok);
        $this->authmodel->show_response($result);
    }

}
