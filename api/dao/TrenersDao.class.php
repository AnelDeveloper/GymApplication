<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once dirname(__FILE__)."/BaseDao.class.php";

class trenersDao extends BaseDao{

  public function __construct(){
    parent::__construct("treners");
  }

  public function get_trener_by_AID ($id){

      return $this->query_unique("SELECT * FROM treners WHERE Account_ID=:Account_ID", ["Account_ID"=>$id]);
    }



}

 ?>
