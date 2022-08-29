<?php
session_start();
include("../../controllers/setup/connect.php");
$stock = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM stock_item WHERE reference_no='".$_POST['reference_no']."'"));

$end_product = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM end_product WHERE reference_no='".$_POST['reference_no']."'"));

$invoice_received = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM invoice_received WHERE reference_no ='".$_POST['reference_no']."'"));

$single_product = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM single_product WHERE end_product_ref ='".$invoice_received['reference_no']."' ORDER BY ID DESC LIMIT 1"));


?>


<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}

#regForm {
  background-color: #ffffff;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
</style>
<body>

  <div class="row">
    <div class="col-md-5 offset-md-4">
  <div class="card-body">

          <form id="add-job-seeker-form" class="mt-4" enctype="multipart/form-data">
            <input type="hidden" value="add-job-seeker" name="add-job-seeker">

          <!-- start of row -->

                <div class="tab">Personal Information
                    <div class="row">
                <div class="col-lg-6 col-xs-12 form-group">
                    <label><span class="required">*</span>First Name</label>
                      <input type="text" autocomplete="off" class="select2 form-control" name="fName">
                </div>
                <div class="col-lg-6 col-xs-12 form-group">
                    <label><span class="required">*</span>Last Name</label>
                      <input type="text" autocomplete="off" class="select2 form-control" name="lName">
                </div>



              <div class="col-lg-6 col-xs-12 form-group">
                <label> <span class="required">*</span> Date Of Birth</label>
                <div class="input-group mb-2 mr-sm-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                  </div>
                  <input type="text" class="form-control project_start_date" autocomplete="off" name="dob" required>
                </div>
              </div>
              <div class="col-lg-6 col-xs-12 form-group">
                <div class="row">
                  <label><span class="required">*</span>Gender  </label>
                    </div>
                  <div class="row">
                  <select name="gender" id="type">
                      <option selected="selected">Select type</option>

                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    </select>
              </div>
              </div>
              </div>

              </div>
            <div class="tab">Contact List
              <div class="row">
                <div class="col-lg-6 col-xs-12 form-group">
                    <label><span class="required">*</span>Email</label>
                      <input type="email" autocomplete="off" class="select2 form-control" name="Email">
                </div>
                <div class="col-lg-6 col-xs-12 form-group">
                    <label><span class="required">*</span>Location</label>
                      <input type="text" autocomplete="off" class="select2 form-control"  name="location">
                </div>
                <div class="col-lg-6 col-xs-12 form-group">
                    <label><span class="required">*</span>Contact</label>
                      <input type="text" autocomplete="off" class="select2 form-control"  name="contact">
                </div>

                <div class="col-lg-6 col-xs-12 form-group">
                    <label><span class="required">*</span>Nationality</label>
                      <input type="text" autocomplete="off" class="select2 form-control"  name="nationality">
                </div>


  </div>
              </div>


              <div class="tab">Work Information
                <div class="row">
                  <div class="col-lg-6 col-xs-12 form-group">
                      <label><span class="required">*</span>Highest Qualification</label>
                        <input type="email" autocomplete="off" class="select2 form-control" name="highestQualification">
                  </div>
                  <div class="col-lg-6 col-xs-12 form-group">
                      <label><span class="required">*</span>Current Position</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="currentPosition">
                  </div>
                  <div class="col-lg-6 col-xs-12 form-group">
                      <label><span class="required">*</span>Company Name</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="companyName">
                  </div>

                  <div class="col-lg-6 col-xs-12 form-group">
                      <label><span class="required">*</span>Experience</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="experience">
                  </div>


    </div>
                </div>

                <div class="tab">password Information </br>

                    <!--<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>-->
                      <label for="password">Enter Password
                        <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
                        title="Your Password associated to your Windows account" id=""></i></label>
                      <div class="input-group add-on">
                        <input type="password" name="password" id="password" maxlength="40" class="form-control pwd"  required placeholder="input your password">

                      </div>
                      <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
                      <div class="row">

                      </div>
                      <label for="password">Confirm Password
                        <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
                        title="Your Password associated to your Windows account" id="password_help"></i></label>
                      <div class="input-group add-on">
                        <input type="password" id="confirm" name="confirm" maxlength="40" class="form-control pwd"  required placeholder="Confirm Your password">

                      </div>
                      <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>

      </div>
                  </div>

              <div style="overflow:auto;">
              <div style="float:right;">
                <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
              </div>
            </div>
            <!-- Circles which indicates the steps of the form: -->
            <div style="text-align:center;margin-top:40px;">
              <span class="step"></span>
              <span class="step"></span>
              <span class="step"></span>
                <span class="step"></span>

            </div>
        </form>
  </div>
</div>
  </div>
        <script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

<script>
$('#confirm').on('keyup', function () {
  if ($('#password').val() == $('#confirm').val()) {
    $('#password_help').html(' Password Matched').css('color', 'blue');
  } else
    $('#password_help').html('Not Matching').css('color', 'red');
});

</script>

</body>
</html>
