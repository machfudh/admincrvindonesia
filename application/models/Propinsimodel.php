<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of propinsimodel
 *
 * @author user
 */
class Propinsimodel extends CI_Model {
     function __construct() {
              parent::__construct(); 
         } 

         var $dataModel = 'provinsi'; 
         

         function addpropinsi($datapropinsi) { 
             $this->db->insert($this->dataModel,$datapropinsi); 
         } 

         function delpropinsi($idpropinsi) { 
             $this->db->where( 'id',$idpropinsi); 
             $this->db->delete($this->dataModel); 
         } 

         function updpropinsi($idpropinsi,$datapropinsi) { 
             $this->db->where( 'id',$idpropinsi); 
             $this->db->update($this->dataModel,$datapropinsi); 
         } 

         function listpropinsi($numPage,$offset,$finds,$findt) {
              if ($findt != ''){
             $this->db->like($finds,$findt);
             }
             $this->db->order_by('id','asc');  
             $this->db->limit($numPage,$offset); 
              return $this->db->get($this->dataModel); // Moh Machfudh jadiin viewModel 
         } 

         function allpropinsi() { 
             $this->db->order_by('id','asc');  
             return $this->db->get($this->dataModel); 
         } 

         function idpropinsi($idpropinsi) { 
             $this->db->where( 'id',$idpropinsi); 
             return $this->db->get($this->dataModel); 
         } 

         //Moh MAchfudh di ubah bisa sesuai dengan total data yang ter pilih 
         function countpropinsi($finds,$findt) { 
             if ($findt != ''){
                $this->db->like($finds,$findt);
             }
             return $this->db->get($this->dataModel); 
         } 
}

?>
