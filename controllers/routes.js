//this file listens to onclick events and responds to the necessary view
var static_page_title = " | HRMIS ";

var error_response = `<div class="alert alert-warning alert-dismissible fade show" role="alert">
                      <strong>Failed!</strong> Sorry, your request could not be not completed. Please try again.
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>`;

var Toast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    onOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
});

var blockui_spinner = `<div class="d-flex align-items-center text-primary">
  <strong>Loading...</strong>
  <div class="spinner-border ml-auto" role="status" aria-hidden="true"></div>
</div>`;




/*var blockui_spinner = `<div class="d-flex align-items-center text-primary">
  <strong>Processing... Please wait</strong>
  <div class="spinner-border ml-auto" role="status" aria-hidden="true"></div>
</div>`;
*/
function CallSmartWizard()
{
  // Toolbar extra buttons
 var btnFinish = $('<button></button>').text('SUBMIT')
                                  .addClass('btn btn-info sw-btn-group-extra d-none')
                                  .on('click', function(){  });

  // SmartWizard initialize
  var wizard = $('#smartwizard-add-job-seeker-form').smartWizard({
    selected: 0, // Initial selected step, 0 = first step
    theme: 'arrows', // theme for the wizard, related css need to include for other than default theme
    justified: true, // Nav menu justification. true/false
    darkMode:false, // Enable/disable Dark Mode if the theme supports. true/false
    autoAdjustHeight: true, // Automatically adjust content height
    cycleSteps: false, // Allows to cycle the navigation of steps
    backButtonSupport: true, // Enable the back button support
    enableURLhash: false, // Enable selection of the step based on url hash
    transition: {
        animation: 'none', // Effect on navigation, none/fade/slide-horizontal/slide-vertical/slide-swing
        speed: '400', // Transion animation speed
        easing:'' // Transition animation easing. Not supported without a jQuery easing plugin
    },
    toolbarSettings: {
        toolbarPosition: 'bottom', // none, top, bottom, both
        toolbarButtonPosition: 'right', // left, right, center
        showNextButton: true, // show/hide a Next button
        showPreviousButton: true, // show/hide a Previous button
        toolbarExtraButtons: [btnFinish] // Extra buttons to show on toolbar, array of jQuery input/buttons elements

    },
    anchorSettings: {
        anchorClickable: true, // Enable/Disable anchor navigation
        enableAllAnchors: false, // Activates all anchors clickable all times
        markDoneStep: true, // Add done state on navigation
        markAllPreviousStepsAsDone: true, // When a step selected by url hash, all previous steps are marked done
        removeDoneStepOnNavigateBack: false, // While navigate back done step after active step will be cleared
        enableAnchorOnDoneStep: true // Enable/Disable the done steps navigation
    },
    keyboardSettings: {
        keyNavigation: true, // Enable/Disable keyboard navigation(left and right keys are used if enabled)
        keyLeft: [37], // Left key code
        keyRight: [39] // Right key code
    },
    lang: { // Language variables for button
        next: 'Next',
        previous: 'Previous'
    },
    disabledSteps: [], // Array Steps disabled
    errorSteps: [], // Highlight step with errors
    hiddenSteps: [], // Hidden steps

  });


  $(wizard).on("leaveStep", function(e, anchorObject, stepNumber, stepDirection) {
      if(stepNumber == "0")
      {
        var validator = $("#add-job-seeker-form").validate({
          rules: {
            strategic_objective: {
              required: true
            },
            project_name: {
              required: true,
              maxlength: 20
            },
            project_description: {
              required: true,
              maxlength: 100
            }
          }
        });
      }

      else if (stepNumber == "1")
      {
        var validator = $("#add-job-seeker-form").validate({
          rules: {
            project_start_date: {
              required: true,
              date:false
            },
            project_end_date: {
              required: true,
              date:false
            },
            duration: {
              required: true
            },
            project_phase: {
              required: true
            }
          }
        });
      }
      else if (stepNumber == "2")
      {
        var validator = $("#add-job-seeker-form").validate({
          rules: {
            funding_agency: {
              required: true
            }
          }
        });
      }

      else
      {
        var validator = $("#add-job-seeker-form").validate({
          rules: {
            project_owner: {
              required: true
            },
            senior_user: {
              required: true
            },
            senior_contractor: {
              required: true
            },
            project_advisor: {
              required: true
            }
          }
        });
      }

      if ($("#add-job-seeker-form").valid())
              {
                 return true;
              }
              else
              {
                 return false;
              }
  });

}

//end of smart wizard
$('[data-toggle="tooltip"]').tooltip("dispose");

$(document).ajaxStart(function() { Pace.restart(); });

$(document).ajaxError(function() { Pace.stop(); });

//LOG IN LINK
$(document).on("click",".login-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/auth/LoginForm.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//user selection employer job seeker

$(document).on("click",".user-selection-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/user/userSelect.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
// recruitment MANAGEMENT

$(document).on("click",".recruitment-management-modulee", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.recruitment-management-navbar').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.performance-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

  $('.admin-recruitment-link').click();

  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'project-management-module',
           page_name: 'Project Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});

// Training MANAGEMENT
$(document).on("click",".training-management-module", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.training-management-navbar').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.performance-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

  $('.training-link').click();

  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'project-management-module',
           page_name: 'Project Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});

// Leave MANAGEMENT
$(document).on("click",".leave-management-module", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.leave-management-navbar').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.performance-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

  $('.leave-link').click();

  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'project-management-module',
           page_name: 'Project Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});


// Personell MANAGEMENT
$(document).on("click",".personell-management-module", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.personell-management-navbar').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.performance-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

  $('.personell-link').click();

  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'project-management-module',
           page_name: 'Project Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});

// recruitment management module
$(document).on("click",".rec-management-module", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.rec-management-navbar').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.performance-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

  $('.rec-link').click();

  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'project-management-module',
           page_name: 'Project Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});


// Job seeker selected
$(document).on("click",".job-seeker-profile-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/user/jobSeeker.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//recruiter selected

$(document).on("click",".rec-profile-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/user/recruiterProf.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// Employer selected
$(document).on("click",".employer-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/user/employer.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// post Vaccancy
$(document).on("click",".post-vaccancy-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/postVaccancy.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();
              LoadDatatables();

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


/// all post vaccancy for people who have applied_jobs
// post Vaccancy
$(document).on("click",".all-post-vaccancy-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/all-postVaccancy.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// Start attaching Evidence Documents

$(document).on("click",".academic-docs-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/job-posting/evidence_doc.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'end-product-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// Admin Recruitment views
$(document).on("click",".admin-recruitment-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/all-vaccancy.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".personell-management-modulee", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.personell-management-module').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.performance-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

  $('.monitor-projects-link').click();

  //$('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'project-management-module',
           page_name: 'Project Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});
// recruitment MANAGEMENT

$(document).on("click",".rec-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/all-vaccancy.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
// personell ANAGEMENT

$(document).on("click",".personell-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/personell_list.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// Training MANAGEMENT
$(document).on("click",".training-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/trainingPersonellList.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//Leave MANAGEMENT
$(document).on("click",".leave-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/leave-management/leaveList.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


$(document).on("click",".leave-link2", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/leave-management/leaveApprovals.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// planning MANAGEMENT
$(document).on("click",".planning-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/planning.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});



// All candidates in the system

$(document).on("click",".all-saved-candidates-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/allSavedCandidates.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// issue test to job Seeker
$(document).on("click",".create-test-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/admin-portal/createTest.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// issue test to trainee_list

$(document).on("click",".create-test-link2", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/testcreateTest.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// View Reponses For Test Undertaken

$(document).on("click",".response-test-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/admin-portal/responseTest.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".response-test-link2", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/testresponseTest.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});



// Sell a module

$(document).on("click",".sell-module-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/admin-portal/sellModule.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

              LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});




//jobs Applied

$(document).on("click",".jobs-applied-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/applicationStatus.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

  LoadDatatables();
      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});



// assign course to student
$(document).on("click",".assigned-stud-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/assigned_course.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

  LoadDatatables();
      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

function getDays(leave_name)
{

  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  $("#ent_days").html('');
       var str='';
    var val=document.getElementById('leave_name');
    for (i=0;i< val.length;i++) {
        if(val[i].selected){
            str += val[i].value + ',';
        }
    }
    var str=str.slice(0,str.length -1);
   console.log(str);

$.ajax({
      type: "GET",
      url: "controllers/leave-management/fetch_days.php",
      data:'leave_name='+str,
      success: function(data){
        $("#ent_days").html(data);
      }
});


}

// Leave Settings
$(document).on("click",".leave-settings", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/leave-management/leave_settings.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

  LoadDatatables();
      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//whole budget allocation

$(document).on("click",".whole-bud-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/whole_budget.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

  LoadDatatables();
      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// individual budget allocation


$(document).on("click",".individual-bud-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/individual_budget.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

  LoadDatatables();
      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
// view all Candidates

$(document).on("click",".all-candidates-link", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/allCandidates.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('#password').focus();

  LoadDatatables();
      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//stock payments tab

$(document).on("click",".stock-list-payments-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/appliedCandidates.php';
  var form_method = 'POST';

  var form_data = {
      applicant_email  : $('.stock-id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#stock-list-payments-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-list-payments-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//  course Details
$(document).on("click",".course-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/courseDetails.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#course-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'course-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//  course Details
$(document).on("click",".trainers-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/trainers_list.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#trainers-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'trainers-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//  assign course Details
$(document).on("click",".course-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/courseStudent.php';
  var form_method = 'POST';
  var form_data = {
    eid : $('.eid').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#course-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'course-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// budget MANAGEMENT
$(document).on("click",".budget-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/budget_list.php';
  var form_method = 'POST';
  var form_data = {
    eid : $('.eid').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#budget-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'course-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//  course Details
$(document).on("click",".trainee-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/trainee_list.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#trainee-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'trainee-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//  course Details
$(document).on("click",".evaluation-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/evalutaion_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#evaluation-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'evaluation-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//  course Details
$(document).on("click",".materials-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/materials_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#materials-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'materials-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// Personal Details
$(document).on("click",".personal-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/personalDetails.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#personal-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'personal-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// bank Details
$(document).on("click",".bank-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/bankDetails.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#bank-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'bank-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// statutory details tabb

$(document).on("click",".statutory-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/statutory_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#statutory-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'statutory-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// employment history tabb
$(document).on("click",".employment-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/employment_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#employment-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'employment-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// dependants tab

$(document).on("click",".dependants-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/dependants_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#dependants-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'dependants-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// professional tabb
$(document).on("click",".professional-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/professional_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#professional-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'professional-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// academic Documents tab

$(document).on("click",".academic-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/academic_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#academic-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'academic-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// certificate details tabb
$(document).on("click",".certificate-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/certificate_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#certificate-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'certificate-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// documents details
$(document).on("click",".documents-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/personell-management/documents_details.php';
  var form_method = 'POST';

  var form_data = {
    id : $('.id').val()
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#documents-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'documents-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});



//Job Application
function applyDets(applicant_email)
{

  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  $("#stock-list-payments-tab").html('');
       var str='';
    var val=document.getElementById('applicant_email');
    for (i=0;i< val.length;i++) {
        if(val[i].selected){
            str += val[i].value + ',';
        }
    }
    var str=str.slice(0,str.length -1);
   console.log(str);

$.ajax({
      type: "GET",
      url: "views/job-posting/appliedCandidates.php",
      data:'applicant_email='+str,
      success: function(data){
        $("#stock-list-payments-tab").html(data);
      }
});


}

function SelectProjectModule(str)
{
  var project_module = project_module;
//  var id= $('.select-project').val();
  //var applicant_email = $('.select-project').val();

var form_url = 'views/job-posting/appliedCandidates.php';

  var form_method = 'POST';
  var id = str;
  var form_data = {
    id : id
  };


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        $('.project-module-data').removeClass('d-none')
          //place the response data in the response data id
          $.unblockUI();
          $('.project-module-data').html(data);
          LoadDatatables();

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });

}

function SelectResponse(str)
{
  var project_module = project_module;
//  var id= $('.select-project').val();
  //var applicant_email = $('.select-project').val();

var form_url = 'views/admin-portal/testResponses.php';

  var form_method = 'POST';
  var id = str;
  var form_data = {
    id : id
  };


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        $('.project-module-data').removeClass('d-none')
          //place the response data in the response data id
          $.unblockUI();
          $('.project-module-data').html(data);
          LoadDatatables();

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });

}


function SelectResponse2(str)
{
  var project_module = project_module;
//  var id= $('.select-project').val();
  //var applicant_email = $('.select-project').val();

var form_url = 'views/training-management/testResponses.php';

  var form_method = 'POST';
  var id = str;
  var form_data = {
    id : id
  };


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        $('.project-module-data').removeClass('d-none')
          //place the response data in the response data id
          $.unblockUI();
          $('.project-module-data').html(data);
          LoadDatatables();

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });

}



// JOB Test
function SelectProjectModule2(str)
{
  var project_module = project_module;
//  var id= $('.select-project').val();
  //var applicant_email = $('.select-project').val();

var form_url = 'views/admin-portal/view-test.php';

  var form_method = 'POST';
  var id = str;
  var form_data = {
    id: id
  };


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        $('.project-module-data').removeClass('d-none')
          //place the response data in the response data id
          $.unblockUI();
          $('.project-module-data').html(data);
          LoadDatatables();

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });

}


// trainee quiz TeST
// JOB Test
function SelectProjectModule3(str)
{
  var project_module = project_module;
//  var id= $('.select-project').val();
  //var applicant_email = $('.select-project').val();

var form_url = 'views/training-management/testViewTest.php';

  var form_method = 'POST';
  var eid = str;
  var form_data = {
    eid: eid
  };


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        $('.project-module-data').removeClass('d-none')
          //place the response data in the response data id
          $.unblockUI();
          $('.project-module-data').html(data);
          LoadDatatables();

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });

}


// View personell MANAGEMENT
function viewPersonellList(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/personell-management/personell_management.php';
  var form_method = 'POST';
  var id = str;

  var form_data = {
    id: id
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  var link_title = $('.stock-management-link').text();
  var page_title =  $('.stock-management-link').text() + id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.personal-details-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-management-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

// Training MANAGEMENT
function viewTraineeList(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/training-management/trainee_management.php';
  var form_method = 'POST';
  var id = str;

  var form_data = {
    id: id
  };

  $('a').removeClass('active');
  $('.training-link').addClass('active');
  var link_title = $('.training-link').text();
  var page_title =  $('.training-link').text() + id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.course-details-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'training-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

function ViewStock(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/stock-item/stock_management.php';
  var form_method = 'POST';
  var reference_no = str;

  var form_data = {
    reference_no: reference_no
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  var link_title = $('.stock-management-link').text();
  var page_title =  $('.stock-management-link').text() + reference_no + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.stock-list-payments-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-management-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

function applyDets2(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

    var form_url = 'views/job-posting/appliedCandidates.php';
  var form_method = 'POST';
  var applicant_email = str;

  var form_data = {
    applicant_email: applicant_email
  };

  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        $.unblockUI();
        $('#current-title').html(page_title);
        $('#stock-list-payments-tab').html(data);
        LoadDatatables();


          //log page request
        var page_data = {
               page_id: 'stock-management-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end view stock details


//On click on applicant Details
$(document).on("click",".view-more-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/stock-item/view_payments.php';
  var form_method = 'POST';
  var form_data = {
    reference_no : $('.stock-id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#stock-list-payments-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-list-payments-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// click on applicant Details
$(document).on("click",".applicants-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/appliedCandidates.php';
  var form_method = 'POST';
  var form_data = {
    applicant_email : $('.applicant_email').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#stock-list-payments-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'applicants-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// view application details for individual

$(document).on("click",".applicant-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/postApplicant.php';
  var form_method = 'POST';
  var form_data = {
    reference_no : $('.stock-id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#stock-list-payments-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-list-payments-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//Job Application
function applyJob(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/job-posting/appliedVaccancy.php';
  var form_method = 'POST';
  var id = str;

  var form_data = {
    id: id
  };

  $('a').removeClass('active');
  $('.post-vaccancy-link').addClass('active');
  var link_title = $('.post-vaccancy-link').text();
  var page_title =  $('.post-vaccancy-link').text() + id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          //$('.stock-list-payments-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-management-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end view stock details

// View course list for all trainee_list

function SelectCourseList(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/training-management/trainee_management2.php';
  var form_method = 'POST';
  var eid = str;

  var form_data = {
    eid: eid
  };

  $('a').removeClass('active');
  $('.create-test-link').addClass('active');
  var link_title = $('.all-post-vaccancy-link').text();
  var page_title =  $('.all-post-vaccancy-link').text() + eid + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {

          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.course-tab').click();
            LoadDatatables();


          //log page request
        var page_data = {
               page_id: 'all-post-vaccancy-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

// budget MANAGEMENT
function SelectBudgetList(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/training-management/budget_management.php';
  var form_method = 'POST';
  var eid = str;

  var form_data = {
    eid: eid
  };

  $('a').removeClass('active');
  $('.create-test-link').addClass('active');
  var link_title = $('.all-post-vaccancy-link').text();
  var page_title =  $('.all-post-vaccancy-link').text() + eid + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {

          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.budget-tab').click();
            LoadDatatables();


          //log page request
        var page_data = {
               page_id: 'all-post-vaccancy-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
// View test Results

function viewResults(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/aptitude-test/reviewedTest.php';
  var form_method = 'POST';
  var job_posting_id = str;

  var form_data = {
    job_posting_id: job_posting_id
  };

  $('a').removeClass('active');
  $('.post-vaccancy-link').addClass('active');
  var link_title = $('.post-vaccancy-link').text();
  var page_title =  $('.post-vaccancy-link').text() + job_posting_id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          //$('.stock-list-payments-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-management-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end view stock details

// View Exam details

function applyTest(str)
{

  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/answer_management.php';
  var form_method = 'POST';
  var reference_no = str;

  var form_data = {
    reference_no : reference_no
  };

  $('a').removeClass('active');
  $('.create-test-link').addClass('active');
  var link_title = $('.all-post-vaccancy-link').text();
  var page_title =  $('.all-post-vaccancy-link').text() + reference_no + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {

          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.test-details-tab').click();
            LoadDatatables();


          //log page request
        var page_data = {
               page_id: 'all-post-vaccancy-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });


}
//end view stock details



// view applicant Details
function viewJobApplicants(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/job-posting/jobApplicantDetails.php';
  var form_method = 'POST';
  var id = str;

  var form_data = {
    id: id
  };

  $('a').removeClass('active');
  $('.all-post-vaccancy-link').addClass('active');
  var link_title = $('.all-post-vaccancy-link').text();
  var page_title =  $('.all-post-vaccancy-link').text() + id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {

          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          //$('.stock-list-payments-tab').click();
            LoadDatatables();


          //log page request
        var page_data = {
               page_id: 'all-post-vaccancy-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}


// View test Details

function viewTestDetails(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/test_management.php';
  var form_method = 'POST';
  var id = str;

  var form_data = {
    id: id
  };

  $('a').removeClass('active');
  $('.create-test-link').addClass('active');
  var link_title = $('.all-post-vaccancy-link').text();
  var page_title =  $('.all-post-vaccancy-link').text() + id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {

          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.job-details-tab').click();
            LoadDatatables();


          //log page request
        var page_data = {
               page_id: 'all-post-vaccancy-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}


// view quiz response details2
function viewTestDetails2(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/training-management/test_management.php';
  var form_method = 'POST';
  var eid = str;

  var form_data = {
    eid: eid
  };

  $('a').removeClass('active');
  $('.create-test-link').addClass('active');
  var link_title = $('.all-post-vaccancy-link').text();
  var page_title =  $('.all-post-vaccancy-link').text() + eid + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {

          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.job-details-tab2').click();
            LoadDatatables();


          //log page request
        var page_data = {
               page_id: 'all-post-vaccancy-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
$(document).on("click",".test-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/aptitude-test/underTake.php';
  var form_method = 'POST';
  var form_data = {
    job_title : $('.job_title').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#test-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'job-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// Answer tabb

$(document).on("click",".job-details-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/job-posting/testDetails.php';
  var form_method = 'POST';
  var form_data = {
    id : $('.id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#job-details-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'job-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".job-details-tab2", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/testDetails.php';
  var form_method = 'POST';
  var form_data = {
    eid : $('.eid').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#job-details-tab2').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'job-details-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//trainee tab2
$(document).on("click",".course-details2-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/training-management/courseStudent.php';
  var form_method = 'POST';
  var form_data = {
    eid : $('.eid').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#course-details2-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'course-details2-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
// view applicant Details
function viewJobApplicants2(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/job-posting/appliedCandidates.php';
  var form_method = 'POST';
  var applicant_email = str;

  var form_data = {
    applicant_email: applicant_email
  };

  $('a').removeClass('active');
  $('.all-post-vaccancy-link').addClass('active');
  var link_title = $('.all-post-vaccancy-link').text();
  var page_title =  $('.all-post-vaccancy-link').text() + applicant_email + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('stock-list-payments-tab').click();
          //$('.stock-list-payments-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'all-post-vaccancy-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}





// view application Details
function viewApplication(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/job-posting/postApplicant.php';
  var form_method = 'POST';
  var job_posting_id = str;

  var form_data = {
    job_posting_id: job_posting_id
  };

  $('a').removeClass('active');
  $('.post-vaccancy-link').addClass('active');
  var link_title = $('.post-vaccancy-link').text();
  var page_title =  $('.post-vaccancy-link').text() + job_posting_id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          //$('.stock-list-payments-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-management-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end view stock details







$(document).on("click",".test-login-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/auth/TestLoginForm.php';
  var form_method = 'POST';
  var form_data = {
  };

  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//LOG OUT LINK
$(document).on("click",".log-out-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

    $.ajax({
        url:"controllers/auth/LogoutController.php",
        method:"POST",
        beforeSend: function()
        {
            $.blockUI({ message: blockui_spinner });
        },
        success: function(resposeData){
           $.unblockUI();
            if(resposeData == "success")
            {
               $('#current-title').html(static_page_title);
                location.reload();
            }
            else if (resposeData == "failed")
            {
              Toast.fire({
                  icon: 'error',
                  title: 'Please try again'
              });
            }
            else
            {
              Toast.fire({
                  icon: 'error',
                  title: 'Request Failed. Please try again'
              });
            }
        },
        error: function(xhr)
        {
          $.unblockUI();
          Toast.fire({
                    icon: 'error',
                    title: 'Your request could not be completed. Please try again: '+xhr.status
            });
        }
    });
});
//START DASHBOARD ROUTES - PROJECTS

//active invoices link
$(document).on("click",".open-total-invoices-modal", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/applicationRequest.php';
  var form_method = 'POST';
  var form_data = {
  };

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $('#dashboard-project-payments-modal-body').html('loading..');
      },
      success: function(data)
      {
          //place the response data in the response data id
          $('#dashboard-project-payments-modal-body').html('');
          $('#dashboard-project-payments-modal-body').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'open-dashboard-project-payments-modal',
               page_name: 'Dashboard Stocks Payments'

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//end active invoices paymentss link

//active invoices link
$(document).on("click",".open-total-product-deliveries", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/total_assigned_test.php';
  var form_method = 'POST';
  var form_data = {
  };

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $('#deliveries-details-modal-body').html('loading..');
      },
      success: function(data)
      {
          //place the response data in the response data id
          $('#deliveries-details-modal-body').html('');
          $('#deliveries-details-modal-body').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'open-dashboard-project-payments-modal',
               page_name: 'Dashboard Deliveries '

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// Total profit

$(document).on("click",".open-total-profits-modal", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/total_product_profit.php';
  var form_method = 'POST';
  var form_data = {
  };

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $('#dashboard-total-profit-modal-body').html('loading..');
      },
      success: function(data)
      {
          //place the response data in the response data id
          $('#dashboard-total-profit-modal-body').html('');
          $('#dashboard-total-profit-modal-body').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'open-dashboard-project-payments-modal',
               page_name: 'Dashboard Total Profits '

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//total stocks link

$(document).on("click",".open-total-stocks-modal", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/postedJobs.php';
  var form_method = 'POST';
  var form_data = {
  };

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $('#stocks-approval-modal').html('loading..');
      },
      success: function(data)
      {
          //place the response data in the response data id
          $('#total-stocks-modal-body').html('');
          $('#total-stocks-modal-body').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'open-total-projects-modal',
               page_name: 'Dashboard Total Stocks'

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//end total stocks link
//total end product link


//active projects payments link
$(document).on("click",".open-total-deliveries-modal", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/end_product_approvals.php';
  var form_method = 'POST';
  var form_data = {
  };

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $('#total-deliveries-modal').html('loading..');
      },
      success: function(data)
      {
          //place the response data in the response data id
          $('#total-deliveries-modal-body').html('');
          $('#total-deliveries-modal-body').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'open-dashboard-project-payments-modal',
               page_name: 'Dashboard Projects Payments'

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//end active project paymentss link

//START stock list LINKS
$(document).on("click",".stock-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/stock-item/stock_list.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//START product category LINKS
$(document).on("click",".stock-category-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/stock-item/stock_category.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-category-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//START end product LINKS
$(document).on("click",".end-product-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/stock-item/end_product_list.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'end-product-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// Delivery to customer list

$(document).on("click",".customer-delivery-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/customer-management/customer_delivery.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'customer-delivery-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//START stock list LINKS
$(document).on("click",".end-product-resource-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/resource-sheet/end_product_resource_list.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;
  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'end-product-resource-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//Stock approvals
$(document).on("click",".stock-approvals-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/stock-item/stock_approvals.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;
  var dynamic_badge_quarterly_update_url = 'views/risk-management/RiskApprovalsBadgeQuarterlyUpdate.php';
  var dynamic_badge_new_edited_url='views/risk-management/RiskApprovalsBadgeNewEdited.php';

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        //$('.pending_approval_quarterly_updates_tab').click();
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
           $('.pending_approval_tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stock-approvals-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

        $.ajax({
          url: dynamic_badge_quarterly_update_url,
          method:"POST",
          success: function(returned_badge_data_q){
            $('.quarterly-update-badge').html(returned_badge_data_q);
          },
          error: function(){
            $('.quarterly-update-badge').html('please reload page');
          }
        });

        $.ajax({
          url: dynamic_badge_new_edited_url,
          method:"POST",
          success: function(returned_badge_data){
            $('.new-edited-badge').html(returned_badge_data);
          },
          error: function(){
            $('.new-edited-badge').html('please reload page');
          }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//Stock approvals
$(document).on("click",".delivery-approvals-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/customer-management/delivery_approvals.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;
  var dynamic_badge_quarterly_update_url = 'views/risk-management/RiskApprovalsBadgeQuarterlyUpdate.php';
  var dynamic_badge_new_edited_url='views/risk-management/RiskApprovalsBadgeNewEdited.php';

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        //$('.pending_approval_quarterly_updates_tab').click();
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
           $('.delivery_pending_approval_tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'delivery-approvals-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

        $.ajax({
          url: dynamic_badge_quarterly_update_url,
          method:"POST",
          success: function(returned_badge_data_q){
            $('.quarterly-update-badge').html(returned_badge_data_q);
          },
          error: function(){
            $('.quarterly-update-badge').html('please reload page');
          }
        });

        $.ajax({
          url: dynamic_badge_new_edited_url,
          method:"POST",
          success: function(returned_badge_data){
            $('.new-edited-badge').html(returned_badge_data);
          },
          error: function(){
            $('.new-edited-badge').html('please reload page');
          }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// start customer list

$(document).on("click",".customer-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/customer-management/customerlist.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'customer-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// start customer Ledger

$(document).on("click",".customer-ledger-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/customer-management/customer_ledger.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'customer-ledger-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// supplier list

$(document).on("click",".supplier-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/supplier-management/supplier_list.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'supplier-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// supplier ledger list

$(document).on("click",".supplier-ledger-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/supplier-management/supplier_ledger.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'supplier-ledger-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//Invoice listen
$(document).on("click",".invoice-received-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/stock-item/invoicelist.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'invoice-received-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//returns-outwards
$(document).on("click",".returns-outwards-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/returns/returns-outwards.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'returns-outwards-management-link',
               page_name: link_title

                };
        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//returns-outwards
$(document).on("click",".returns-inwards-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/returns/returns-inwards.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'returns-inwards-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});




//start view stock details

//end view stock details

// start view end product Details
function ViewDelivery(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/customer-management/customer_list_management.php';
  var form_method = 'POST';
  var id = str;

  var form_data = {
    id: id
  };

  $('a').removeClass('active');
  $('.end-product-management-link').addClass('active');
  var link_title = $('.end-product-management-link').text();
  var page_title =  $('.end-product-management-link').text() + id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
            $('.stocks-used-tab').click();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'end-product-management-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end view stock details



//end product tab




//evidence document tab

$(document).on("click",".end-product-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/stock-item/end_product.php';
  var form_method = 'POST';
  var form_data = {
    reference_no : $('.stock-id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#end-product-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'end-product-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

// deliveries Returns
$(document).on("click",".return-inwards-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/customer-management/delivery_returns.php';
  var form_method = 'POST';
  var form_data = {
    id : $('.id').val()
  };
  $('a').removeClass('active');
  $('.end-product-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#return-inwards-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'return-inwards-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// click of stock Returns
$(document).on("click",".stocks-returns-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/stock-item/stock_returns.php';
  var form_method = 'POST';
  var form_data = {
    reference_no : $('.stock-id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#stocks-returns-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stocks-returns-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


$(document).on("click",".evidence-doc-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/stock-item/evidence_doc.php';
  var form_method = 'POST';
  var form_data = {
    reference_no : $('.stock-id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#evidence-doc-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'evidence-doc-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//evidence document tab

$(document).on("click",".delivery-evidence-doc-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/customer-management/evidence_doc.php';
  var form_method = 'POST';
  var form_data = {
    id : $('.id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#delivery-evidence-doc-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'delivery-evidence-doc-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//stock used tab
$(document).on("click",".stocks-used-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/customer-management/stocks_used.php';
  var form_method = 'POST';
  var form_data = {
    id : $('.id').val()
  };
  $('a').removeClass('active');
  $('.end-product-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#stocks-used-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'stocks-used-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


// product delivery tab

$(document).on("click",".product-delivery-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/customer-management/customer_delivery.php';
  var form_method = 'POST';
  var form_data = {
    id : $('.id').val()
  };
  $('a').removeClass('active');
  $('.end-product-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#product-delivery-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'product-delivery-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});



// return Outwards

$(document).on("click",".return-outwards-tab", function(){
  //destrory any active tooltips

  $('[data-toggle="tooltip"]').tooltip("dispose");
  var form_url = 'views/stock-item/return-outwards.php';
  var form_method = 'POST';
  var form_data = {
    reference_no : $('.stock-id').val()
  };
  $('a').removeClass('active');
  $('.stock-management-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#return-outwards-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'return-outwards-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});



$(document).on('click','.switch-to-module-standard-risks', function(){

  $('#response-data').html('');

  var department_code = $('#department_code').val();
  SelectDepartmentRisk(department_code);

  $('.performance-management-navbar').addClass('d-none');
  $('.risk-management-navbar').removeClass('d-none');

  $('.switch-to-module-standard-risks').addClass('d-none');
  $('.switch-to-module-standard-performance').removeClass('d-none');
  $('.project-management-navbar').addClass('d-none');

});

$(document).on('click','.switch-to-module-standard-performance', function(){

  $('#response-data').html('');

  var department_code = $('#department_code').val();
  SelectDepartmentWorkplan(department_code);

  $('.performance-management-navbar').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.project-management-navbar').addClass('d-none');


  $('.switch-to-module-standard-performance').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

});

//HIDE NAVBAR UNTIL A SPECIFIC MODULE IS SELECTED
$('.performance-management-navbar').addClass('d-none');
$('.risk-management-navbar').addClass('d-none');

$(document).on("click",".risk-management-module", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();
  $('.performance-management-navbar').addClass('d-none');
  $('.risk-management-navbar').removeClass('d-none');
  $('.project-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-performance').removeClass('d-none');

  $('.switch-to-module').html('<i class="fal fa-toggle-off"></i> Switch to Performance').removeClass('risk-management-module monitor-risks-link').addClass('performance-management-module monitor-workplan-link');
  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'risk-management-module',
           page_name: 'Risk Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });



});

$(document).on("click",".inventory-management-module", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.inventory-management-navbar').removeClass('d-none');
  $('.project-management-navbar').addClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

    $('.inventory-management-link').click();

  $('.switch-to-module').html('<i class="fal fa-toggle-off"></i>  Switch to Risks').removeClass('performance-management-module monitor-workplan-link').addClass('risk-management-module monitor-risks-link');
  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'Inventory-management-module',
           page_name: 'Inventory Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});

$(document).on("click",".asset-management-module", function(){

  /*swal({
    title: 'Development In progress',
    text: 'The Module will be completed Soon',
    type: 'Success',
    confirmButtonText: 'Okay',

});
*/
swalWithBootstrapButtons.fire(
  'Development In progress',
  'The Module will be completed Soon',
  'success'
);

});

//start project management routes
$(document).on("click",".inventory-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/MonitorProjects.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $('.inventory-management-link').text();
  var page_title =  link_title + static_page_title;


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'inventory-management-link',
               page_name: 'Monitor Projects'

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".project-management-module", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");
  $('.module-panel').hide();

  $('.project-management-navbar').removeClass('d-none');
  $('.risk-management-navbar').addClass('d-none');
  $('.performance-management-navbar').addClass('d-none');
  $('.switch-to-module-standard-risks').removeClass('d-none');

  $('.inventory-management-link').click();

  $('#response-data').html('');

      //log page request
    var page_data = {
           page_id: 'project-management-module',
           page_name: 'Project Management Module'

            };

    $.ajax({
        url:"controllers/data/PageController.php",
        method:"POST",
        data: page_data,
        success: function(data)
        {
            console.log(data);
        },
        error: function(xhr)
        {
            console.log(xhr);
        }
    });
});

//start project management routes
$(document).on("click",".monitor-projects-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/MonitorProjects.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $('.monitor-projects-link').text();
  var page_title =  link_title + static_page_title;


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-projects-link',
               page_name: 'Monitor Projects'

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//start view project
function ViewProject(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewProject.php';
  var form_method = 'POST';
  var id = str;

  var form_data = {
    id: id
  };

  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  var link_title = $('.monitor-projects-link').text();
  var page_title =  $('.monitor-projects-link').text() + id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-projects-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end view project

//start view milestone
function ViewMilestone(str)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewMilestone.php';
  var form_method = 'POST';
  var reference_no = str;

  var form_data = {
    reference_no: reference_no
  };

  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  var link_title = $('.monitor-projects-link').text();
  var page_title =  $('.monitor-projects-link').text() + reference_no + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.performance-management-navbar').addClass('d-none');
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-projects-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end view milestone

$(document).on("click",".milestones-tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewMilestone.php';
  var form_method = 'POST';
  var form_data = {
    project_id : $('.project-id').val()
  };
  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#milestones-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'milestones-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".project-resource-plan-tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewResourcePlan.php';
  var form_method = 'POST';
  var form_data = {
    project_id : $('.project-id').val()
  };
  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#project-resource-plan-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'project-resource-plan-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".project-risks-tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewProjectRisks.php';
  var form_method = 'POST';
  var form_data = {
    project_id : $('.project-id').val()
  };
  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#project-risks-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'project-risks-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".project-lessons-learnt-tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewLessonsLearnt.php';
  var form_method = 'POST';
  var form_data = {
    project_id : $('.project-id').val()
  };
  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#project-lessons-learnt-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'project-lessons-learnt-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".project-issue-logs-tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewIssueLogs.php';
  var form_method = 'POST';
  var form_data = {
    project_id : $('.project-id').val()
  };
  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#project-issue-logs-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'project-issue-logs-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".project-payments-tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/project-management/ViewPayments.php';
  var form_method = 'POST';
  var form_data = {
    project_id : $('.project-id').val()
  };
  $('a').removeClass('active');
  $('.monitor-projects-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#project-payments-tab').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'project-payments-tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


//end project management routes

//USER PROFILE
$(document).on("click",".user-profile-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/user/UserProfile.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;


  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          LoadDatatables();

          $("#timeline-data").load("views/user/TimeLinePaginated.php?page=1");
        //  $(".pagination").rPage();

          //log page request
        var page_data = {
               page_id: 'user-profile-link',
               page_name: 'User Profile'

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click","#pagination li", function(e){
  e.preventDefault();
  $("#timeline-data").html('loading...');
  $("#pagination li").removeClass('active');
  $(this).addClass('active');
      var pageNum = this.id;
      $("#timeline-data").load("views/user/TimeLinePaginated.php?page=" + pageNum);
});
//END USER PROFILE

//RISK MANAGEMENT
//departmental objectives
$(document).on("click",".departmental-objectives-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/objectives/DepartmentalObjectives.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'departmental-objectives-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END departmental objectives
//start departmental objectives edit page
function ShowDepartmentalObjectiveEditPage(str)
{
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/objectives/EditObjective.php';
  var form_method = 'POST';
  var departmental_objective_id = str;
  var form_data = {
      departmental_objective_id : departmental_objective_id
  };
  $('a').removeClass('active');
  $('.departmental-objectives-link').addClass('active');
  var link_title = $('.departmental-objectives-link').text();
  var page_title =  $('.departmental-objectives-link').text() + departmental_objective_id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'departmental-objectives-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });
      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}
//end departmental objectives edit pae
//MONITOR RISKS
$(document).on("click",".monitor-risks-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/MonitorRisks.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);

          //log page request
        var page_data = {
               page_id: 'monitor-risks-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END MONITOR RISKS
//select department risk
function SelectDepartmentRisk(str)
{
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/DepartmentalRisks.php';
  var form_method = 'POST';
  var select_department = str;
  var form_data = {
      select_department : select_department
  };
  $('a').removeClass('active');
  $('.monitor-risks-link').addClass('active');
  var link_title = $('.monitor-risks-link').text();
  var page_title =  $('.monitor-risks-link').text() + select_department + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-risks-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

//end select department risk

$(document).on("click",".monitor-risks-link-standard", function(){
  SelectDepartmentRisk(str);
});
//END MONITOR RISKS for standard
//select risk
function ViewRisk(reference_no,department_code)
{
  $('#response-data').html('');
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/ViewRisk.php';
  var form_method = 'POST';
  var reference_no = reference_no;
  var department_code =department_code;
  var form_data = {
      department_code : department_code,
      reference_no: reference_no
  };
  $('a').removeClass('active');
  $('.monitor-risks-link').addClass('active');
  var link_title = $('.monitor-risks-link').text();
  var page_title =  $('.monitor-risks-link').text() + reference_no + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('textarea').autosize();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('.performance-management-navbar').addClass('d-none');
          $('.switch-to-module').html('<i class="fal fa-toggle-off"></i> Switch to Performance').removeClass('risk-management-module').addClass('performance-management-module');
          $('.risk-management-navbar').removeClass('d-none');

          $('.switch-to-module-standard-risks').addClass('d-none');
          $('.switch-to-module-standard-performance').removeClass('d-none');
          $('.project-management-navbar').addClass('d-none');

          $('.update-comments').hide();
          $('.edit-comments').hide();

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-risks-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

//end view risk

//risk approvals
$(document).on("click",".risk-approvals-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/RiskApprovals.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;
  var dynamic_badge_quarterly_update_url = 'views/risk-management/RiskApprovalsBadgeQuarterlyUpdate.php';
  var dynamic_badge_new_edited_url='views/risk-management/RiskApprovalsBadgeNewEdited.php';

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        //$('.pending_approval_quarterly_updates_tab').click();
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'risk-approvals-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

        $.ajax({
          url: dynamic_badge_quarterly_update_url,
          method:"POST",
          success: function(returned_badge_data_q){
            $('.quarterly-update-badge').html(returned_badge_data_q);
          },
          error: function(){
            $('.quarterly-update-badge').html('please reload page');
          }
        });

        $.ajax({
          url: dynamic_badge_new_edited_url,
          method:"POST",
          success: function(returned_badge_data){
            $('.new-edited-badge').html(returned_badge_data);
          },
          error: function(){
            $('.new-edited-badge').html('please reload page');
          }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".new-edit-notification",function(){
  $('.pending_approval_new_edited_tab').click();
});
$(document).on("click",".quarterly-update-notification",function(){
  $('.pending_approval_quarterly_updates_tab').click();
});

$(document).on("click",".pending_approval_quarterly_updates_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/RiskApprovalsQuarterlyUpdatesPendingApproval.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $('.pending_approval_quarterly_updates_tab').addClass('active');
  $('.risk-approvals-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#risk-approvals-data').html('');
          $('#risk-approvals-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'pending_approval_quarterly_updates_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".pending_approval_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/stock-item/stock_pending_approval.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $('.stock-approvals-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#risk-approvals-data').html('');
          $('#risk-approvals-data').html(data);
          $('.current-breadcrumb').html(link_title);
            $('.delivery_pending_approval_tab').click();
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'pending_approval_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".approved_stocks_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

    var form_url = 'views/stock-item/approved_stocks.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $('.risk-approvals-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#risk-approvals-data').html('');
          $('#risk-approvals-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'approved_stocks_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".rejected_stocks_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/RiskApprovalsRejected.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $('.risk-approvals-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#risk-approvals-data').html('');
          $('#risk-approvals-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'rejected_risks_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//END stock approvals

// start delivery Approvals
$(document).on("click",".delivery_pending_approval_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/customer-management/delivery_pending_approval.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $('.delivery-approvals-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#delivery-approvals-data').html('');
          $('#delivery-approvals-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'delivery_pending_approval_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".approved_delivery_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

    var form_url = 'views/customer-management/approved_delivery.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $('.delivery-approvals-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#delivery-approvals-data').html('');
          $('#delivery-approvals-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'approved_delivery_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".rejected_delivery_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/customer-management/deliveryRejected.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $('.delivery-approvals-link').addClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#delivery-approvals-data').html('');
          $('#deivery-approvals-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'rejected_delivery_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//END delivery approvals

//delegate approvals
$(document).on("click",".delegate-approvals-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/DelegateApprovals.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'delegate-approvals-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END delegate approvals

//emerging trends
$(document).on("click",".emerging-trends-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/EmergingTrends.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'emerging-trends-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END emerging trends

//lessons learnt
$(document).on("click",".lessons-learnt-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/LessonsLearnt.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('.strategies_that_worked_well_tab').click();
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'lessons-learnt-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END lessons learnt


//strategies that worked well
$(document).on("click",".strategies_that_worked_well_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/LessonsLearntStrategiesThatWorkedWell.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#strategies_that_worked_well_tab').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'strategies_that_worked_well_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END strategies that worked well

//strategies that did not work
$(document).on("click",".strategies_that_did_not_work_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/LessonsLearntStrategiesThatDidNotWork.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#strategies_that_did_not_work_tab').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'strategies_that_did_not_work_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END strategies that did not work

//near misses
$(document).on("click",".near_misses_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/LessonsLearntNearMisses.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#near_misses_tab').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'near_misses_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END near misses

//incident reporting
$(document).on("click",".incident-reporting-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/risk-management/IncidentReporting.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'incident-reporting-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END incident reporting

//END RISK MANAGEMENT


//PERFORMANCE MANAGEMENT

//monitor workplan
$(document).on("click",".monitor-workplan-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/performance-management/MonitorWorkplans.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-workplan-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END monitor workplan

//select department workplan
function SelectDepartmentWorkplan(str)
{
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/performance-management/WorkplanYears.php';
  var form_method = 'POST';
  var select_department = str;
  var form_data = {
      select_department : select_department
  };
  $('a').removeClass('active');
  $('.monitor-workplan-link').addClass('active');
  var link_title = $('.monitor-workplan-link').text();
  var page_title =  $('.monitor-workplan-link').text() + select_department + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-workplan-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

//end select department workplan
//start select financial year for workplan
function fetchWorkplan(id,dep) {
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");


    var form_data = {
      sid:id,
      dep:dep
    };
    var form_url = 'views/performance-management/DepartmentalWorkplan.php';
    var form_method = 'POST';

    var page_title = "Monitor Workplan " + dep + " " +id + static_page_title;

    $.ajax({
        data: form_data,
        url: form_url,
        method: form_method,

        beforeSend: function()
        {
            $.blockUI({ message: blockui_spinner });
        },
        success: function(data)
        {
            //place the response data in the response data id
            $.unblockUI();
            $('#current-title').html(page_title);
            $('#response-data').html(data);
            LoadDatatables();

            //log page request
          var page_data = {
                 page_id: 'monitor-workplan-link',
                 page_name: page_title

                  };

          $.ajax({
              url:"controllers/data/PageController.php",
              method:"POST",
              data: page_data,
              success: function(data)
              {
                  console.log(data);
              },
              error: function(xhr)
              {
                  console.log(xhr);
              }
          });

        },
        error: function(xhr)
        {
          $.unblockUI();
          Toast.fire({
                    icon: 'error',
                    title: 'Your request could not be completed. Please try again: '+xhr.status
            });
        }
    });
}
//end select financial year for workplan

//select activity
function ViewActivity(activity_id,selected_department,year_id)
{
  $('#response-data').html('')
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/performance-management/ViewActivity.php';
  var form_method = 'POST';
  var activity_id = activity_id;
  var selected_department =selected_department;
  var year_id =year_id;

  var form_data = {
    activity_id: activity_id,
    selected_department: selected_department,
    year_id: year_id
  };
  $('a').removeClass('active');
  $('.monitor-workplan-link').addClass('active');
  var link_title = $('.monitor-workplan-link').text();
  var page_title =  $('.monitor-workplan-link').text() + activity_id + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('.risk-management-navbar').addClass('d-none');
          $('.switch-to-module').html('<i class="fal fa-toggle-off"></i> Switch to Risks').removeClass('performance-management-module').addClass('risk-management-module');
          $('.performance-management-navbar').removeClass('d-none');

          $('.switch-to-module-standard-risks').removeClass('d-none');
          $('.switch-to-module-standard-performance').addClass('d-none');
          $('.project-management-navbar').addClass('d-none');

          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'monitor-workplan-link',
               page_name: page_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

//end view activity

//END PERFORMANCE MANAGEMENT

//START UPDATE MONITORING
$(document).on("click",".update-monitoring-admin-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/update-monitoring.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'update-monitoring-admin-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".update-monitoring-user-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/user/update-monitoring.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'update-monitoring-user-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//END UPDATE MONITORING
//start dashboard

$(document).on("click",".job-seeker-dashboard-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/job-seeker-dashboard.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);

          //log page request
        var page_data = {
               page_id: 'superuser-dashboard-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

        LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


$(document).on("click",".recruiter-dashboard-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/recruiter-dashboard.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);

          //log page request
        var page_data = {
               page_id: 'superuser-dashboard-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

        LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


$(document).on("click",".superuser-dashboard-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/inventory-dashboard.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);

          //log page request
        var page_data = {
               page_id: 'superuser-dashboard-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

        LoadDatatables();


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".power_bi_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/PowerBi.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#powerBi_tab').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'power_bi_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".standard-dashboard-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/standard-dashboard.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'standard-dashboard-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });

      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".standard_power_bi_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/dashboard/PowerBiStandard.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#powerBi_tab').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'standard_power_bi_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//end dashboard

//START ADMIN LINKS
$(document).on("click",".admin-user-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/UserManagement.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'admin-user-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//start admin logs
$(document).on("click",".admin-logs-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/Logs.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          $('.activity_logs_tab').click();
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'admin-logs-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".activity_logs_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/LogsActivityLogs.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#logs-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'activity_logs_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".page_logs_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/LogsPageLogs.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#logs-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'page_logs_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".sign_in_logs_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/LogsSignInLogs.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#logs-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'sign_in_logs_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".mail_logs_tab", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/LogsMailLogs.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#logs-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'mail_logs_tab',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

//end admin logs
$(document).on("click",".admin-period-management-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/PeriodManagement.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'admin-period-management-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});


$(document).on("click",".admin-backup-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/Backup.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'admin-backup-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".system-info-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'assets/libs/phpsysinfo/index.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
        console.log(data);
          //place the response data in the response data id
          var iframe = `<iframe width="100%" height="1500"" frameborder="0"
                                src="assets/libs/phpsysinfo/index.php"
                                allowFullScreen="true"></iframe>`;


          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(iframe);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'system-info-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END ADMIN LINKS


//START REPORTS LINK
$(document).on("click",".reports-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/reports/SelectReportType.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'reports-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});

$(document).on("click",".recruiter-reports-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/reports/SelectRecruiterReportType.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'reports-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//END REPORTS LINK

//START REPORTS
function ReportType(str){
    //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/reports/ReportTypes.php';
  var form_method = 'POST';
  var report_type = str;
  var form_data = {
    report_type : report_type
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  $('.reports-link').addClass('active');
  var link_title = "Reports | "+report_type;
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'reports-link',
               page_name: "Reports "+ report_type

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}


function EditCumulativeRisk(directors_cumulative_id){
    //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/reports/fetch-tied-risks-per-directorate-risks.php';
  var form_method = 'POST';
  var form = $('#edit-cumulative-risk-'+directors_cumulative_id);

  $(form).submit(function(e){
      e.preventDefault();;
  });

  var form_data = form.serializeArray();

  $('a').removeClass('active');
  $(this).addClass('active');
  $('.reports-link').addClass('active');
  var link_title = $('.reports-link').text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'reports-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
}

//END REPORTS

//start feedback link
$(document).on("click",".user-feedback-link", function(){
  //destrory any active tooltips
  $('[data-toggle="tooltip"]').tooltip("dispose");

  var form_url = 'views/admin-portal/UserFeedback.php';
  var form_method = 'POST';
  var form_data = {
  };
  $('a').removeClass('active');
  $(this).addClass('active');
  var link_title = $(this).text();
  var page_title =  link_title + static_page_title;

  $.ajax({
      data: form_data,
      url: form_url,
      method: form_method,

      beforeSend: function()
      {
          $.blockUI({ message: blockui_spinner });
      },
      success: function(data)
      {
          //place the response data in the response data id
          $.unblockUI();
          $('#current-title').html(page_title);
          $('#response-data').html(data);
          $('.current-breadcrumb').html(link_title);
          LoadDatatables();

          //log page request
        var page_data = {
               page_id: 'user-feedback-link',
               page_name: link_title

                };

        $.ajax({
            url:"controllers/data/PageController.php",
            method:"POST",
            data: page_data,
            success: function(data)
            {
                console.log(data);
            },
            error: function(xhr)
            {
                console.log(xhr);
            }
        });


      },
      error: function(xhr)
      {
        $.unblockUI();
        Toast.fire({
                  icon: 'error',
                  title: 'Your request could not be completed. Please try again: '+xhr.status
          });
      }
  });
});
//end feedback link
