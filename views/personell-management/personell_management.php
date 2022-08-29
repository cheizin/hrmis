

<?php
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['id']))
{
  exit("Please select Stock ");
}

$pdetails = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id ='".$_POST['id']."'"));
?>
<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
   <li class="breadcrumb-item active" aria-current="page">Employee Name:  <b>   <strong><?php echo $pdetails ['fName'];?></strong></li></b>
     </ol>
</nav>
<br/>



<input type="hidden" name="id" class="id" value="<?php echo $pdetails['id'] ;?>">

<div class="row">
  <div class="col-lg-12">
    <ul class="nav nav-tabs nav-fill" role="tablist">
      <li class="nav-item">
        <a class="nav-link personal-details-tab" data-toggle="tab" href="#personal-details-tab" role="tab"
            aria-controls="contact" aria-selected="false">
           Personal Details
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link bank-details-tab" data-toggle="tab" href="#bank-details-tab" role="tab"
           aria-selected="false">
      Bank Details
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link statutory-details-tab" data-toggle="tab" href="#statutory-details-tab" role="tab"
           aria-selected="false">
           Statutory Details
        </a>
      </li>



      <li class="nav-item">
        <a class="nav-link employment-details-tab" data-toggle="tab" href="#employment-details-tab" role="tab"
           aria-selected="false">
           Employement Terms
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link dependants-details-tab" data-toggle="tab" href="#dependants-details-tab" role="tab"
           aria-selected="false">
           Dependants
        </a>
      </li>


      <li class="nav-item">
        <a class="nav-link professional-details-tab" data-toggle="tab" href="#professional-details-tab" role="tab"
           aria-selected="false">
           Professional Qualification
        </a>
      </li>


      <li class="nav-item">
        <a class="nav-link academic-details-tab" data-toggle="tab" href="#academic-details-tab" role="tab"
           aria-selected="false">
           Academic Qualification
        </a>
      </li>


      <li class="nav-item">
        <a class="nav-link certificate-details-tab" data-toggle="tab" href="#certificate-details-tab" role="tab"
           aria-selected="false">
           Certificate and awards
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link documents-details-tab" data-toggle="tab" href="#documents-details-tab" role="tab"
           aria-selected="false">
           Scanned Documents
        </a>
      </li>


    </ul>
    <div class="tab-content">

      <div class="tab-pane fade" id="personal-details-tab" role="tabpanel"></div>

      <div class="tab-pane fade" id="bank-details-tab" role="tabpanel"></div>

        <div class="tab-pane fade" id="statutory-details-tab" role="tabpanel"></div>

      <div class="tab-pane fade" id="employment-details-tab" role="tabpanel"></div>

        <div class="tab-pane fade" id="dependants-details-tab" role="tabpanel"></div>

          <div class="tab-pane fade" id="professional-details-tab" role="tabpanel"></div>

            <div class="tab-pane fade" id="academic-details-tab" role="tabpanel"></div>

              <div class="tab-pane fade" id="certificate-details-tab" role="tabpanel"></div>


      <div class="tab-pane fade" id="documents-details-tab" role="tabpanel"></div>




    </div>

  </div>
</div>




<!--PROJECT MODALS -->
