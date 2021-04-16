<?php
include_once 'config/db.php';
// var_dump(file_exists("config/DataSource.php"));
// die();

header("Access-Control-Allow-Origin: * ");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");


$name = '';
$slug = '';
$short_description = '';
$description= '';
$image = '';
$regular_price = '';
$sale_price = '';
$numberofperson = '';

$conn = null;

$DatabaseService = new DatabaseService();
$conn = $DatabaseService->getConnection();

$data = json_decode(file_get_contents('php://input'),true);
// var_dump($HTTP_RAW_POST_DATA);


// print_r(array_values($data));
// die();

$name = $data['name'];

$slug = $data['slug'];
$short_description = $data['short_description'];
$description = $data['description'];
$image = $data['image'];
$regular_price = $data['regular_price'];
$sale_price = $data['sale_price'];
$numberofperson = $data['numberofperson'];
 // Modified from $data['create_at'];
$table_name = 'products';

$query = "INSERT INTO " . $table_name .  "(name,slug,short_description ,description,image,regular_price,sale_price,numberofperson) VALUES ('$name', '$slug', '$short_description', '$description','$image','$regular_price','$sale_price','$numberofperson');
";

$stmt = $conn->prepare($query);



$stmt->bindParam(':name', $name);
$stmt->bindParam(':slug', $slug);
$stmt->bindParam(':short_description', $short_description);
$stmt->bindParam(':description', $description);
$stmt->bindParam(':image', $image);
$stmt->bindParam(':regular_price', $regular_price);
$stmt->bindParam(':sale_price', $sale_price);
$stmt->bindParam(':numberofperson', $numberofperson);



// var_dump($stmt); 
// die();
if($stmt->execute()){

    http_response_code(200);
    echo json_encode(array("message" => "Product was successfully added."));
}
else{
    http_response_code(400);

    echo json_encode(array("message" => "Unable to add the product."));
}
?>