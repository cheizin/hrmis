<?php
include("../setup/connect.php");
session_start();
if(!empty($_GET['leave_name'])) {
  $leave_name = $_GET["leave_name"];
	$query ="SELECT * FROM leave_type WHERE leave_name = '".$leave_name."'";
	$results = mysqli_query($dbc,$query) or die("failed");
?>
<?php
	foreach($results as $departmental_sub_objective_id) {
?>
	<option selected value="<?php echo $departmental_sub_objective_id['id']; ?>"><?php echo $departmental_sub_objective_id['entitled_days']; ?></option>
<?php


}
}
else
{
    echo "Not available";
}
?>
