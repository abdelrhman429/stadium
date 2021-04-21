<?phpinclude_once 'config/db.php';
// var_dump(file_exists("config/DataSource.php"));
// die();

header("Access-Control-Allow-Origin: * ");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// $id = '';
$date = '';
$start_time = '';
$end_time = '';
$full_name= '';
$email = '';
$phone = '';
$numberofperson = '';
$product_id= '';
$total= '';

$conn = null;

$DatabaseService = new DatabaseService();
$conn = $DatabaseService->getConnection();

$data = json_decode(file_get_contents('php://input'),true);
// var_dump($HTTP_RAW_POST_DATA);


// print_r(array_values($data));
// die();
// $id= $data['id'];
$date = $data['date'];
$start_time= $data['start_time'];
$end_time= $data['end_time'];
$full_name = $data['full_name'];
$email = $data['email'];
$phone = $data['phone'];
$numberofperson= $data['numberofperson'];
$product_id = $data['product_id'];
$total = $data['total'];
// var_dump($data);
// die();
 // Modified from $data['create_at'];
$table_name = 'booking';

$query = "INSERT INTO " . $table_name . "(date,start_time,end_time ,full_name, email,phone,numberofperson,product_id,total) VALUES ('$date', '$start_time', '$end_time', '$full_name','$email','$phone','$numberofperson','$product_id','$total');
              ";
$stmt = $conn->prepare($query);



$stmt->bindParam(':date', $date);
$stmt->bindParam(':start_time', $start_time);
$stmt->bindParam(':end_time', $end_time);
$stmt->bindParam(': full_name ', $full_name );
$stmt->bindParam(':email', $email);
$stmt->bindParam(':phone', $phone);
$stmt->bindParam(':numberofperson', $numberofperson);
$stmt->bindParam(':product_id', $product_id);
$stmt->bindParam(':total', $total);



// var_dump($stmt); 
// die();
if($stmt->execute()){

    http_response_code(200);
    echo json_encode(array("message" => "User was successfully booked."));
}
else{
    http_response_code(400);

    echo json_encode(array("message" => "Unable to make the user booking."));
}
?>
