<?php
    include('indexDB.php');
    session_start();
   
	$sql = "DELETE a.*, b.* FROM rent a
    INNER JOIN plant b ON a.plant_id = b.plant_id
    WHERE a.plant_id='" . $_GET["id"] . "';";
    if (mysqli_query($conn, $sql)) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . mysqli_error($conn);
    }
    mysqli_close($conn);

?>