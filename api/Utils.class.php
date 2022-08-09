<?php
class Utils{


  public static function random_pwd($n=10){

    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $randomString = '';

    for ($i = 0; $i < $n; $i++) {
        $index = rand(0, strlen($characters) - 1);
        $randomString .= $characters[$index];
    }
    return $randomString;



  }

  public static function getProteine(){

    $arrX = array("proteini soon");

    $k = array_rand($arrX);

    return $arrX[$k];


  }

  public static function getGymPlace(){

    $arrX = array("All4Sport", "All In","Shark gym","Pro Gym");

    $k = array_rand($arrX);

    return $arrX[$k];


  }

  public static function getGymDate(){

    $start = strtotime("2021-06-01 00:00:00");
  $end =  strtotime("2022-12-31 23:59:59");

  $randomDate = date("Y-m-d H:i:s", rand($start, $end));

  return $randomDate;




  }

}

 ?>
