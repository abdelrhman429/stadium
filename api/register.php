<?php
include_once 'config/DataSource.php';
// var_dump(file_exists("config/DataSource.php"));
// die();

header("Access-Control-Allow-Origin: * ");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$username = '';
$email = '';
$password = '';
$conn = null;

$DatabaseService = new DatabaseService();
$conn = $DatabaseService->getConnection();

$data = json_decode(file_get_contents('php://input'),true);
// var_dump($HTTP_RAW_POST_DATA);


// print_r(array_values($data));
// die();
$username = $data['username'];
$email = $data['email'];
$password = $data['password'];
$create_at = time(); // Modified from $data['create_at'];
$table_name = 'tbl_member';

$query = "INSERT INTO " . $table_name . "
                SET username = :username,
                    email = :email,
                    password = :password,
                    create_at = :create_at";

$stmt = $conn->prepare($query);

$stmt->bindParam(':username', $username);

$stmt->bindParam(':email', $email);

$password_hash = password_hash($password, PASSWORD_BCRYPT);

$stmt->bindParam(':password', $password_hash);
$stmt->bindParam(':create_at', $create_at);
// var_dump($stmt); 
// die();
if($stmt->execute()){

    http_response_code(200);
    echo json_encode(array("message" => "User was successfully registered."));
}
else{
    http_response_code(400);

    echo json_encode(array("message" => "Unable to register the user."));
}
?>