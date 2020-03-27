
 

- config ( application\config\config.php )
  $config['base_url'] = 'http://192.168.1.17/admincrv';
  menjadi -> "http://domain.com/admincrv"
  
- database ( application\config\database.php )
  'username' => 'root',  -> sesuai nama user database nya 
  'password' => '',      -> sesuai password database nya 
  'database' => 'indonesiacrv', -> sesuai nama database nya   
  
- jangan lupa import database dari Admincrv\datatabel ( crvindonesia.sql )  