<?php





 
 Flight::route('POST /register ', function(){
     $data=Flight::request()->data->getData();
     Flight::json(Flight::userService()->register($data));



 });


 

Flight::route('GET /confirm/@token', function($token){
  Flight::userService()->confirm($token);

});



Flight::route('POST /login', function(){


  $data=Flight::request()->data->getData();
  Flight::json(Flight::userService()->login($data));

});



Flight::route('POST /forgot', function(){
  $data=Flight::request()->data->getData();
  Flight::json(Flight::userService()->forgot($data));


});


Flight::route('POST /reset', function(){
  $data=Flight::request()->data->getData();
  Flight::json(Flight::userService()->reset($data));


});



 Flight::route('POST /registerTrener ', function(){
     $data=Flight::request()->data->getData();
     Flight::json(Flight::userService()->registerTrener($data));



 });


 
 Flight::route('PUT /admin/users/@id', function($id){
   $data = Flight::request()->data->getData();
   Flight::json(Flight::userService()->update($id, $data));
 });
 
 
 Flight::route('PUT /treners/protein/@id', function($id){
   $data = Flight::request()->data->getData();
   Flight::json(Flight::clientservice()->update($id, $data));
 });


 
 Flight::route('GET /treners/@id', function($id){
   Flight::json(Flight::trenerService()->get_by_id($id));
 });


 Flight::route('PUT /treners/@id', function($id){
   $data = Flight::request()->data->getData();
   Flight::json(Flight::trenerService()->update($id, $data));
 });
 
 Flight::route('PUT /clients/protein/@id', function($id){
   $data = Flight::request()->data->getData();
   Flight::json(Flight::clientservice()->update($id, $data));
 });

 

 Flight::route('GET /clients/@id', function($id){

   Flight::json(Flight::clientservice()->get_by_id($id));
 });


 
 Flight::route('GET /admin/users', function(){
   $offset = Flight::query('offset', 0);
   $limit = Flight::query('limit', 25);
   $search = Flight::query('search');
   $order = Flight::query('order', "-id");

   Flight::json(Flight::userService()->get_accounts($search, $offset, $limit, $order));
 });

 
 
 Flight::route('GET /treners/@id', function($id){

   Flight::json(Flight::trenerService()->get_by_id($id));
 });

 
 
 Flight::route('GET /treners/clients/@id', function($id){

   Flight::json(Flight::clientservice()->get_by_id($id));
 });
