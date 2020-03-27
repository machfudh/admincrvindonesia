<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of kabupatenmodel
 *
 * @author user
 */
class Kabupatenmodel extends CI_Model {
     function __construct() {
              parent::__construct(); 
         } 

         var $dataModel = 'kabupaten'; 
          

         function addkabupaten($datakabupaten) { 
             $this->db->insert($this->dataModel,$datakabupaten); 
         } 

         function delkabupaten($idkabupaten) { 
             $this->db->where( 'id',$idkabupaten); 
             $this->db->delete($this->dataModel); 
         } 

         function updkabupaten($idkabupaten,$datakabupaten) { 
             $this->db->where( 'id',$idkabupaten); 
             $this->db->update($this->dataModel,$datakabupaten); 
         } 

         function listkabupaten($numPage,$offset,$finds,$findt) {
              if ($findt != ''){
             $this->db->like($finds,$findt);
             }
             $this->db->order_by('id','asc');  
             $this->db->limit($numPage,$offset); 
              return $this->db->get($this->dataModel); // Moh Machfudh jadiin viewModel 
         } 
         
          function listkabpro($idpro){
             $this->db->where( 'id_provinsi',$idpro);
             $this->db->order_by('urutan_kab','asc');
             return $this->db->get($this->dataModel);
         }

         function allkabupaten() { 
             $this->db->order_by('id','asc');  
             return $this->db->get($this->dataModel); 
         } 

         function idkabupaten($idkabupaten) { 
             $this->db->where( 'id',$idkabupaten); 
             return $this->db->get($this->dataModel); 
         } 

         //Moh MAchfudh di ubah bisa sesuai dengan total data yang ter pilih 
         function countkabupaten($finds,$findt) { 
             if ($findt != ''){
                $this->db->like($finds,$findt);
             }
             return $this->db->get($this->dataModel); 
         } 
}

?>
