<?php
    include('indexDB.php');
    session_start();
   
	$sql = "DELETE a.*, b.* FROM sale a
    INNER JOIN flat b ON a.flat_id = b.flat_id
    WHERE a.flat_id='" . $_GET["id"] . "';";
    if (mysqli_query($conn, $sql)) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . mysqli_error($conn);
    }
    mysqli_close($conn);

?>