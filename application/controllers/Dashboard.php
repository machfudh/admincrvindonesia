<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
            $data['titlemenu'] = 'Dashboard';
            $data['grafix1'] = "[
                    { x: 0, y: 20 },
                    { x: 1, y: 10 },
                    { x: 2, y: 15 },
                    { x: 3, y: 10 },
                    { x: 4, y: 15 },
                    { x: 5, y: 5 },
                    { x: 6, y: 15 },
                    { x: 7, y: 10 },
                    { x: 8, y: 20 },
                    { x: 9, y: 25 },
                    { x: 10, y: 35 }
            ]";
            $this->load->view('tempdash',$data);
	}
}
