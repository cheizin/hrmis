<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}

if(!isset($_POST['id']))
{
  exit("Please select  ");
}


session_start();
include("../../controllers/setup/connect.php");

$profile_pic= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id='".$_POST['id']."'"));
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/


?>
<div class="col-lg-12 col-xs-12">
  <div class="card card-success card-outline">
    <div class="card-header">

      <button class="btn btn-link" style="float:right;"
              data-toggle="modal" data-target="#add-evidence-details-modal">
            Attach evidence documents
      </button>

    </div>
    <div class="card-body table-responsive">

      <?php
    $sql_query1 =  mysqli_query($dbc,"SELECT * FROM all_evidence_document WHERE reference_no ='".$_SESSION['email']."' ORDER BY id DESC LIMIT 1 ");

    $number = 1;
    if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
    {?>
     <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
         <tr>
           <td>#</td>
           <td>Curriculum Vitae</td>
           <td>Tertiary Certificate</td>
           <td>KCSE Certificate</td>
            <td>Email</td>

       </tr>
       </thead>
       <?php

         $sql = mysqli_query($dbc,"SELECT * FROM all_evidence_document WHERE reference_no ='".$_SESSION['email']."' ORDER BY id DESC LIMIT 1");
           while($invoice = mysqli_fetch_array($sql))

           {?>
             <tr style="cursor: pointer;">
               <td><?php echo $number++;?>. </td>
               <td>    <a href="views/stock-item/documents/<?php echo $invoice['cv'];?>" target="_blank">

                            <?php echo $invoice['cv'];?>

                             </a>
                           </td>
               <td> <a href="views/stock-item/documents/<?php echo $invoice['college_doc'];?>" target="_blank">
                    <?php echo $invoice['college_doc'];?>
                             </a>
                           </td>
               <td><a href="views/stock-item/documents/<?php echo $invoice['kcse_doc'];?>" target="_blank">

                        <?php echo $invoice['kcse_doc'];?>
                             </a>
                             </td>
                             <td>
                               <?php echo $invoice['reference_no'];
                                 ?>

                             </td>
            </tr>
            <?php
          }
        ?>
     </table>

     <?php
     }
     else
     {
           ?>
         <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No  Evidence documents Added</strong>
</div>

       <?php
     }
     ?>



    </div>
  </div>
</div>

<!-- start add end product modal -->
<div class="modal fade" id="add-evidence-details-modal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header alert alert-success">

          <h5 class="modal-title">Attaching Supporting Documents for <strong><?php echo $profile_pic['fName'];?></strong>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-evidence-details-form">
            <input type="hidden" name="add-evidence-details" value="add-evidence-details">

          <input type="hidden" name="reference_no" value="<?php echo $_POST['id'];?>">
            <input type="hidden" name="email" value="<?php echo $profile_pic['Email'];?>">

            <div class="row border-bottom mx-2">

            <div class="col-lg-12 col-xs-12">
                <label>CV Document</label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-btn">
                      <span class="btn btn-primary btn-file project-file">
                          <i class="fal fa-file-alt"></i>  Browse &hellip; <input type="file" name="additional_file2" class="form-control purchase-order-document" single>
                      </span>
                  </span>
                </div>
                <input type="text" class="form-control bg-white purchase-order-document-label" readonly>
              </div>
              <div class="row purchase-order-document-error"></div>

            </div>

            <div class="col-lg-12 col-xs-12">
                <label>Tertiary Document</label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-btn">
                      <span class="btn btn-primary btn-file project-file">
                          <i class="fal fa-file-alt"></i>  Browse &hellip; <input type="file" name="additional_file" class="form-control delivery-note-document" single>
                      </span>
                  </span>
                </div>
                <input type="text" class="form-control bg-white delivery-note-document-label" readonly>
              </div>
              <div class="row delivery-note-document-error"></div>

            </div>

                          <div class="col-lg-12 col-xs-12">
                              <label>KCSE Document</label>
                            <div class="input-group mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-btn">
                                    <span class="btn btn-primary btn-file project-file">
                                        <i class="fal fa-file-alt"></i>  Browse &hellip; <input type="file" name="file" class="form-control invoice-document" single>
                                    </span>
                                </span>
                              </div>
                              <input type="text" class="form-control bg-white invoice-document-label" readonly>
                            </div>
                            <div class="row invoice-document-error"></div>

                          </div>

                <div class="pull-left mt-4">
                  <small class="text-muted">Recorded by:- <?php echo $_SESSION['fName'];?></small>
                </div>
                  </div>



            <div class="row text-center">
                <button type="submit" class="btn btn-primary btn-block btn_submit_total submitting8">SUBMIT</button>
            </div>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- end add end product -->
