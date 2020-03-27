<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of newPHPClass
 *
 * @author Mahfud
 */
class Terimakasih extends CI_Controller {
    
    var $limit = 10;
    var $title = 'Registrasi';
    var $linkweb = 'member';
    var $titlemenu = 'Master Data';
    var $tabel = 'member';


    function index() {
        $this->terresgistrasi();
    }

    function terresgistrasi() {
        $data['title'] = $this->title;
        $data['titlemenu'] = $this->titlemenu;
        $data['main_view'] = $this->tabel . '/terimakasih';
        
        
        $this->load->view('terimakasih', $data);
    }

}
