<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Kabupaten
 *
 * @author Mahfud
 */
class Kabupaten extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('kabupatenmodel');
    }

    function getkabupaten() {
        $id_provinsi = $_POST['prov'];
//              echo $id_provinsi;
        $mkabupaten = $this->kabupatenmodel->listkabpro($id_provinsi)->result();
        $num_row = $this->kabupatenmodel->listkabpro($id_provinsi)->num_rows();
        if ($num_row > 0) {
            foreach ($mkabupaten as $row) {
                $data['listkabupaten'][$row->id] = $row->kabupaten;
            }
        } else {
            $data['listkabupaten'] = array('Data kabupaten Tidak Ada');
        }

//               $kabup = $num_row;

        $kabup = form_dropdown('lckota', $data['listkabupaten'], isset($default['lckota']) ? $default['lckota'] : '', 'class="form_select" onchange="cboxkec(this.value)"');
        echo $kabup;
    }

    function nilkabupaten() {
        $id_provinsi = $_POST['prov'];
//              echo $id_provinsi;
        $kabupaten = $this->kabupatenmodel->listkabpro($id_provinsi)->result();
        $num_row = $this->kabupatenmodel->listkabpro($id_provinsi)->num_rows();
        if ($num_row > 0) {
            foreach ($kabupaten as $row) {
                $data['listkabupaten'][$row->id] = $row->kabupaten;
            }
        } else {
            $data['listkabupaten'] = array('...');
//                   $data['listkec'] = array('Data Kecamatan Tidak Ada');
        }

//               $kabup = $num_row;

        $kabup = form_dropdown('lckabupaten', $data['listkabupaten'], isset($default['lckabupaten']) ? $default['lckabupaten'] : '', 'class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required');
//               form_dropdown('lckabupaten',$data['listkabupaten'],isset($default['lckabupaten']) ? $default['lckabupaten'] : '','class="span3"');
        echo $kabup;
    }

}
