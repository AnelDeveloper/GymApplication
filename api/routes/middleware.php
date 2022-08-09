

<?php



Flight::route('/admin/*', function(){
  try {
    $user = (array)\Firebase\JWT\JWT::decode(Flight::header("Authorization"), Config::JWP_SECRET, ["HS256"]);
    if ($user['role'] != "ADMIN"){
      throw new Exception("Admin access required", 403);
    }
    Flight::set('user', $user);
    return TRUE;
  } catch (\Exception $e) {
    Flight::json(["message" => $e->getMessage()], 401);
    die;
  }
});


Flight::route('/clients/*', function(){
  try {
    $user = (array)\Firebase\JWT\JWT::decode(Flight::header("Authorization"), Config::JWP_SECRET, ["HS256"]);
    if ($user['role'] != "CLIENT"){
      throw new Exception("Client access required", 403);
    }
    Flight::set('user', $user);
    return TRUE;
  } catch (\Exception $e) {
    Flight::json(["message" => $e->getMessage()], 401);
    die;
  }
});


Flight::route('/treners/*', function(){
  try {
    $user = (array)\Firebase\JWT\JWT::decode(Flight::header("Authorization"), Config::JWP_SECRET, ["HS256"]);
    if ($user['role'] != "TRENER"){
      throw new Exception("Trener access required", 403);
    }
    Flight::set('user', $user);
    return TRUE;
  } catch (\Exception $e) {
    Flight::json(["message" => $e->getMessage()], 401);
    die;
  }
});


?>
