<?php



Flight::route('GET /admin/accounts', function(){
  $offset = Flight::query('offset', 0);
  $limit = Flight::query('limit', 25);
  $search = Flight::query('search');
  $order = Flight::query('order', "-id");

  Flight::json(Flight::accountService()->get_accounts($search, $offset, $limit, $order));
});


Flight::route('GET /admin/accounts/@id', function($id){
  Flight::json(Flight::accountService()->get_by_id($id));
});


Flight::route('GET /clients/profiles/@id', function($id){
  Flight::json(Flight::clientservice()->get_by_accounts_id($id));
});


Flight::route('GET /treners/profiles/@id', function($id){
  Flight::json(Flight::trenerService()->get_by_AID($id));
});



Flight::route('PUT /admin/accounts/@id', function($id){
  $data = Flight::request()->data->getData();
  Flight::json(Flight::accountService()->update($id, $data));

});


 Flight::route('PUT /treners/clients/@id', function($id){
Flight::json(Flight::clientservice()->update_email_template(Flight::get('user'), intval($id), Flight::request()->data->getData()));
});



Flight::route('GET /treners/clients', function(){
 $account_id = Flight::get('user');
  $offset = Flight::query('offset', 0);
  $limit = Flight::query('limit', 25);
  $search = Flight::query('search');
  $order = Flight::query('order', '-id');

  $total = Flight::clientservice()->get_email_templates($account_id, $offset, $limit, $search, $order, TRUE);
  header('total-records: ' . $total['total']);
  Flight::json(Flight::clientservice()->get_email_templates($account_id, $offset, $limit, $search, $order));
});

 ?>
