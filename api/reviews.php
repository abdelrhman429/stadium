<?php
include_once 'config/db.php';
// include_once './saveReview.php';
// var_dump(file_exists("config/DataSource.php"));
// die();

header("Access-Control-Allow-Origin: * ");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");


$product_id= '';
$name= '';
$email = '';
$comment = '';


$conn = null;

$DatabaseService = new DatabaseService();
$conn = $DatabaseService->getConnection();

$data = json_decode(file_get_contents('php://input'),true);
// var_dump($HTTP_RAW_POST_DATA);

 
// print_r(array_values($data));
// die();

$product_id = $data['product_id'];
$name= $data['name'];
$email = $data['email'];
$comment= $data['comment'];


 // Modified from $data['create_at'];
$table_name = 'review';

$query = "INSERT INTO " . $table_name . "
                  (product_id,
                name,
                email ,
                comment) VALUES ('$product_id', '$name', '$email', '$comment');
                ";

                       
$stmt = $conn->prepare($query);



$stmt->bindParam(':product_id', $product_id);

$stmt->bindParam(':name ', $name );
$stmt->bindParam(':email', $email);
$stmt->bindParam(':comment', $comment);

 


if($stmt->execute()){

    http_response_code(200);
    echo json_encode(array("message" => "User was successfully reviewd."));
}
else{
    http_response_code(400);

    echo json_encode(array("message" => "Unable to make review."));
}
?>

























